FROM ubuntu
RUN apt update -y
RUN apt install -y python3-pip python3-dev libmysqlclient-dev
COPY . /code
WORKDIR /code
RUN pip3 install -r requirements.txt
EXPOSE 8000
