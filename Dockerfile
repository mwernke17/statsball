FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python2-pip python2-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["gunicorn", "--reload", "app:app"]