FROM python:3.8.13-alpine3.16

#RUN apt install -y git
RUN apk add git
RUN git clone https://github.com/JH7770/PokemonOpenRun.git

WORKDIR /PokemonOpenRun/PokemonOpenRun

RUN pip install -r requirements.txt

ENTRYPOINT ["uwsgi"]
CMD ["app.ini"]
