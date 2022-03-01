FROM python:3.9.10-alpine3.15

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./attack.py .

CMD ["python", "./attack.py"]
