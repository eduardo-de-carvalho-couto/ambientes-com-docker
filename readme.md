# Ambiente de desenvolvimento Wordpress (passo a passo)

## No terminal

### 1. Copie o arquivo .exemple.env e defina as variaveis de ambiente, se você preferir
```
cp .example.env .env
```
### 2. Faça o build da imagem
```
docker build -t my-wordpress-image .
```
### 3. Suba os containers
```
docker-compose up -d
```

## No localhost, instale o wordpress e cadastre o primeiro usuario. Depois volte ao terminal

### 4. Entre no container do wordpress
```
docker-compose exec wordpress bash
```
### 5. Execute o script
```
$MY_SCRIPT
```
### 6. Saia do container
```
exit
```
