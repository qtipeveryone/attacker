FROM python:3.9.10-alpine3.15

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./attack.py .

ENTRYPOINT [ "python", "attack_docker.py"]

# If you need add target
#ENTRYPOINT [ "python", "attack_docker.py", "-t http://nlmk.com"]
