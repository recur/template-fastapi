FROM python:3.9

COPY requirements.txt .

RUN pip install -r requirements.txt

CMD ["uvicorn", "demo.main:app", "--host", "0.0.0.0", "--port", "8000"]
