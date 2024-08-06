FROM postgis/postgis:latest

ENV POSTGRES_DB=database
ENV POSTGRES_USER=usuario
ENV POSTGRES_PASSWORD=senha

EXPOSE 5432

CMD ["postgres"]
