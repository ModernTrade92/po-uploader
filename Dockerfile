FROM python:3.10
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y poppler-utils tesseract-ocr
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]