FROM python:3.7.4-alpine

RUN apk update
RUN pip install --no-cache-dir pipenv
RUN pip install --upgrade pip

WORKDIR /usr/src/app
COPY Pipfile Pipfile.lock bootstrap.sh ./
COPY cashman ./cashman

RUN pipenv install
RUN pipenv install marshmallow

EXPOSE 5000
ENTRYPOINT ["/usr/src/app/bootstrap.sh"]