FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py .

# Adjust the command to match how your app runs (e.g. uvicorn, gunicorn, or python)
CMD ["python", "main.py"]
