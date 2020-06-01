FROM python:strech

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]