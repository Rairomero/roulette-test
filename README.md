# README

## Prerequisitos

* Asegurate tener `ruby 2.6.1` instalado.
* Aseugarte tener `postgres` instalado en tu sistema local.

## Como empezar

1. Al clonar el proyecto, en la consola ejecutar:
```
bundle install
```
2. Configurar las credenciales de la base de datos:
```
EDITOR=nano rails credentials:edit
```
Ejemplo de credenciales:
```
# aws:
#   access_key_id: 123
#   secret_access_key: 345

# Used as the base secret for all MessageVerifiers in Rails, including the one protecting cookies.
secret_key_base: SECRET_KEY_BASE
username: pg_username
password: pg_password
host: pg_host
port: pg_port
```
3. En la consola, ejecutar el comando de migraciones con su seed:
```
bundle exec rails db:create db:migrate db:seed
```
4. En la consola, ejecutar el servidor:
```
bundle exec rails s
```