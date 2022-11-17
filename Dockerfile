FROM python:3.8-alpine

WORKDIR /app

COPY app/ /app

RUN apk --update add redis\
 && pip install -r requirements.txt

ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0

EXPOSE 6379
CMD ["/bin/sh","-c","redis-server --daemonize yes && python3 hello.py"]
