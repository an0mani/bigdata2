from __future__ import annotations
from typing import List, Tuple, Optional
from PIL import Image
import hashlib
import math


ANIMAL_LABELS_KO = [
    "고양이", "개", "새", "말", "코끼리",
    "사자", "호랑이", "곰", "얼룩말", "기린",
]


class AnimalClassifier:
    """
    Placeholder classifier that deterministically maps image bytes to
    pseudo-probabilities over a fixed set of animal labels. This allows the
    web service to function without heavy ML dependencies.
    """

    def __init__(self, labels: Optional[list[str]] = None) -> None:
        self.labels = labels or ANIMAL_LABELS_KO

    def _bytes_digest(self, raw_bytes: bytes) -> bytes:
        return hashlib.sha256(raw_bytes).digest()

    def _softmax(self, values: list[float]) -> list[float]:
        max_v = max(values)
        exps = [math.exp(v - max_v) for v in values]
        total = sum(exps)
        return [v / total for v in exps]

    def _scores_from_digest(self, digest: bytes, num_labels: int) -> list[float]:
        # Use digest bytes to create repeatable logits
        # Group bytes into pairs to form integers
        ints = []
        for i in range(0, min(len(digest), num_labels * 2), 2):
            pair = digest[i] << 8 | digest[i + 1]
            # Map to roughly normal-ish logits range
            ints.append(((pair / 65535.0) * 6.0) - 3.0)
        # If not enough, pad deterministically using a second hash
        while len(ints) < num_labels:
            digest = hashlib.sha256(digest).digest()
            for i in range(0, min(len(digest), (num_labels - len(ints)) * 2), 2):
                pair = digest[i] << 8 | digest[i + 1]
                ints.append(((pair / 65535.0) * 6.0) - 3.0)
        return self._softmax(ints[:num_labels])

    def predict(
        self,
        image: Image.Image,
        top_k: int = 3,
        raw_bytes: Optional[bytes] = None,
    ) -> List[Tuple[str, float]]:
        if raw_bytes is None:
            # Derive bytes deterministically from the image content
            buf = image.copy()
            buf.thumbnail((128, 128))
            import io
            b = io.BytesIO()
            buf.save(b, format="PNG")
            raw_bytes = b.getvalue()
        digest = self._bytes_digest(raw_bytes)
        scores = self._scores_from_digest(digest, len(self.labels))
        label_scores = list(zip(self.labels, scores))
        label_scores.sort(key=lambda x: x[1], reverse=True)
        return label_scores[:top_k]