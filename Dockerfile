FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r /app/requirements2.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]