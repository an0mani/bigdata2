from fastapi import FastAPI, File, UploadFile, Request, HTTPException
from fastapi.responses import HTMLResponse, JSONResponse
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates
from PIL import Image
from io import BytesIO
import os

from .model import AnimalClassifier

app = FastAPI(title="동물 사진 분류 서비스", version="1.0.0")

# Static and templates
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
TEMPLATES_DIR = os.path.join(os.path.dirname(BASE_DIR), "templates")
STATIC_DIR = os.path.join(os.path.dirname(BASE_DIR), "static")

app.mount("/static", StaticFiles(directory=STATIC_DIR), name="static")
templates = Jinja2Templates(directory=TEMPLATES_DIR)

# Initialize model (placeholder deterministic classifier)
classifier = AnimalClassifier()


@app.get("/", response_class=HTMLResponse)
async def index(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})


@app.post("/predict")
async def predict(file: UploadFile = File(...)):
    if not file:
        raise HTTPException(status_code=400, detail="이미지가 업로드되지 않았습니다.")
    content_type = (file.content_type or "").lower()
    if not content_type.startswith("image/"):
        raise HTTPException(status_code=400, detail="이미지 파일만 업로드할 수 있습니다.")

    try:
        data = await file.read()
        image = Image.open(BytesIO(data)).convert("RGB")
    except Exception:
        raise HTTPException(status_code=400, detail="이미지 파일을 읽을 수 없습니다.")

    predictions = classifier.predict(image=image, top_k=3, raw_bytes=data)

    return JSONResponse({
        "filename": file.filename,
        "predictions": [
            {"label": label, "score": float(score)} for label, score in predictions
        ]
    })


@app.get("/healthz")
async def healthz():
    return {"status": "ok"}