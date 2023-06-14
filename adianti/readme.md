# Ambiente de desenvolvimento para o Adianti Framework (passo a passo)

## No terminal

### 1. Suba os containers
```
docker-compose up -d
```
### 2. Entre no container do serviço app
```
docker-compose exec app bash
```
### 3. Execute o script
```sh
$ composer install
```
### 6. Saia do container
```
exit
```
