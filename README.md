# Deliver Timeseries App with Dash, Flask, PostgreSQL

Go to .devcontainer and run `docker-compose up -d` or if you have some devcontainer plugin in vscode, just a click away.

Currently work in progress

Some notes:
- while accessing pgadmin in port 9000, there are some issues when creating data server. in setting up the server, instead set the host into `localhost` do `host.docker.internal` instead (referring to this [issue](https://github.com/npgsql/efcore.pg/issues/225))