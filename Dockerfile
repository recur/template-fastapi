FROM python:3.10.0rc2-slim-buster

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY demo demo

CMD ["uvicorn", "demo.main:app", "--host", "0.0.0.0", "--port", "8000"]
