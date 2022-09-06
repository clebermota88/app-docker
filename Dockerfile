FROM python:3.9-slim-buster

WORKDIR /App

COPY requirements.txt .

RUN pip install --upgrade pip -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "-c", "config.py", "app:app"]