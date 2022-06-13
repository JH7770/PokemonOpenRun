FROM python:3.7.3-stretch
#FROM python:3.8.13-alpine3.16

#RUN apt install -y git
#RUN apk add git
RUN apt update && \ 
	apt install -y git && \ 
	apt-get install -y python-dev && \ 
	git clone https://github.com/JH7770/PokemonOpenRun.git
WORKDIR /PokemonOpenRun/PokemonOpenRun
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

# ENTRYPOINT ["uwsgi"]
#CMD ["uwsgi", "app.ini"]
CMD ["uwsgi",  "--socket", "0.0.0.0:5000", "--protocol=http", "-w",  "wsgi:app"]
