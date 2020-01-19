FROM python:stretch

COPY . /app
WORKDIR /app

#install python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]

