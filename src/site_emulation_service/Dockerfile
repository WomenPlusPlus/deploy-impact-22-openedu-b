FROM python:3.9.2-slim-buster

WORKDIR /service

ENV TZ 'UTC'
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE 1
ENV ENV 'PROD'

RUN apt update \
    && apt install -y gcc bash \
    && pip3 install --upgrade pip \
    && apt install -y libpq-dev python-dev python3-dev

RUN pip3 install --no-cache-dir poetry==1.0.10 \
    && poetry config virtualenvs.create false

COPY pyproject.toml .

RUN poetry install --no-dev --no-interaction --no-ansi

EXPOSE 8089

COPY . .

RUN cd service/

ENTRYPOINT python3 -m service