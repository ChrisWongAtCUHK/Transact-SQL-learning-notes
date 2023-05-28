# Transact-SQL Learning Notes

## [Docker Express: Running a Local SQL Server on Your M1 Mac](https://medium.com/geekculture/docker-express-running-a-local-sql-server-on-your-m1-mac-8bbc22c49dc9)
Run a Docker SQL instance on M1:
```
docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=MyPass@word" -e "MSSQL_PID=Developer" -e "MSSQL_USER=SA" -d -v $(pwd)/files:/home/mssql/files --name=mssql -p 1433:1433 mcr.microsoft.com/azure-sql-edge
```