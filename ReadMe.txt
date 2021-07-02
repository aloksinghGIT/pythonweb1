#--RUN the 2 commands
docker pull postgres
docker run --name=db-my -p 5432:5432 -e POSTGRES_PASSWORD=password123 -e POSTGRES_USER=postgres -d postgres

#--CHECK if Container is running
docker ps

#--BUILD the Docker for Python app
#--cd to Project folder on Python app
docker build -t aloksdocker/py-web .\