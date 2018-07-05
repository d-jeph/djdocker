#Pull base image
FROM python:3.6

#Set environment varibles
ENV PYTHONUNBUFFERED 1
ENV DJANGO_ENV dev
ENV DOCKER_CONTAINER 1

#Copy requirements file
COPY ./requirements.txt /code/requirements.txt

#Install dependencies
RUN pip install -r /code/requirements.txt

#Copy project
COPY . /code/

#Set work directory
WORKDIR /code/

EXPOSE 8000