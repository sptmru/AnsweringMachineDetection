FROM python:3.6.15-bullseye

RUN apt-get update && apt-get install -y \
    build-essential \
    libatlas-base-dev \
    libatlas3-base \
    gfortran \
    && apt-get clean

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

COPY . .
COPY .env.template .env

ENTRYPOINT ["docker-entrypoint.sh"]
