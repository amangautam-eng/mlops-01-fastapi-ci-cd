FROM python:3.8-slim

WORKDIR /code

COPY . /code/

EXPOSE 8000

RUN pip install -r requirements.txt

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]