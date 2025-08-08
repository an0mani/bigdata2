# 동물 사진 분류 웹 서비스

간단한 FastAPI 기반의 웹 서비스로, 이미지를 업로드하면 상위 예측 결과를 화면에 보여줍니다. 현재는 실제 모델 대신 이미지 바이트를 해시해 결정적인(항상 동일한) 확률 분포를 생성하는 간단한 모형을 사용합니다. 실제 모델로 교체하기 쉽도록 구조화되어 있습니다.

## 실행 방법

1) 의존성 설치

```bash
pip install -r requirements.txt
```

2) 서버 실행

```bash
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
```

3) 브라우저에서 접속

```
http://localhost:8000
```

## 구조

- `app/main.py`: FastAPI 앱과 라우팅
- `app/model.py`: 간단한 결정적 분류기(실제 모델로 교체하기 쉬움)
- `templates/index.html`: 업로드/결과 UI
- `static/styles.css`: 기본 스타일

## 실제 모델로 교체하기

`app/model.py`의 `AnimalClassifier.predict`를 실제 추론 코드로 바꾸면 됩니다. 예를 들어 PyTorch 또는 ONNX Runtime을 사용하여 모델을 로드하고, 전처리 후 결과를 `[(label, score), ...]` 형태로 반환하세요.