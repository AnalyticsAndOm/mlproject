FROM python:3.11.3-slim-buster
WORKDIR /app
COPY . /app
RUN apt update -y 
RUN pip install awscli
RUN pip install -r requirements.txt
CMD ["python","app.py"]