FROM python:3.10

COPY requirements.txt .

RUN pip install requirements.txt

CMD ["uvicorn", "demo.main:app", "--host", "0.0.0.0", "--port", "8000"]
