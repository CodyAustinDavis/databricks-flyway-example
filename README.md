# databricks-flyway-example

## Try Steps

1. Clone the repo
2. modify flyway.conf with 
   1. [flyway.url](https://flywaydb.org/documentation/configuration/parameters/url)
   2. [flyway.user](https://flywaydb.org/documentation/configuration/parameters/user) (this should be token e.g flyway.user=token)
   3. [flyway.password](https://flywaydb.org/documentation/configuration/parameters/password) (the value of the token e.g flyway.password=dapi)
3. You can click on the links to see how to provide them via env variables or arg flags.
4. Make sure you specify catalog and default schema in the url via: `ConnCatalog=...;` for catalog, `ConnSchema=...;` for schema.

You can use the following script to also provide this information:

```sh
export FLYWAY_URL="jdbc:databricks://...."
export FLYWAY_USER="token"
export FLYWAY_PASSWORD="dapi..."
```

Then you should be good to go to use the [commandline tool](https://flywaydb.org/documentation/usage/commandline/).

You can use flyway info command to see if everything worked.

```sh
./flyway info
```