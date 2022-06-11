FROM python:3.9.13-alpine3.16
RUN apk add git
RUN git clone https://github.com/JH7770/PokemonOpenRun.git

WORKDIR /PokemonOpenRun/PokemonOpenRun

RUN pip install -r requirements.txt

ENTRYPOINT ["uwsgi"]
CMD ["uwsgi", "app.ini"]
