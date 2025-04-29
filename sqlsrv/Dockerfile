# Exemplo adaptado de: https://raw.githubusercontent.com/microsoft/mssql-docker/master/linux/preview/examples/mssql-server-linux-non-root/Dockerfile
FROM mcr.microsoft.com/mssql/server

USER root

USER '$USER'

EXPOSE ${MSSQL_TCP_PORT}

# Definir o comando de entrada
CMD ["/opt/mssql/bin/sqlservr"]