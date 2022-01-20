FROM python:3.8.2

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#work directory
WORKDIR /demo

#dependencies
COPY Pipfile Pipfile.lock /demo/
RUN pip install pipenv && pipenv install --system

COPY . /demo/


