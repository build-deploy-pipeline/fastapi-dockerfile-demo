FROM python:3.10.10

COPY ./app /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80
CMD uvicorn --host=0.0.0.0 --port 80 main:app
