# COMANDOS QUE UTILIZO COMO BASE PARA SUBIR CONTAINERS DE MANEIRA PRÁTICA E RÁPIDA

## CRIAR UMA APLICAÇÃO UTILIZANDO REACT:
```sh
$ docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) node npx create-react-app ./
```
```sh
$ docker run -itv $(pwd):/usr/src/app -u $(id -u):$(id -g) -p 3000:3000 --name meu-app node
```
*Depois, em outro terminal, entre dentro do container, vá na pasta do app e coloque*
npm start
	
*Definindo um network específico*
docker run -itv $(pwd):/usr/src/app -u $(id -u):$(id -g) -p 3000:3000 --name meu-app --network meu_network node

```sh
$ docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs
```

## INSTALAR PACKAGE.JSON
```sh
$ docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) node npm install
```

## COMANDOS QUE ME BASEIO

```sh
$ alias php='docker run -itv $(pwd):/app -w /app -p 8080:8080 php'

$ docker run -itv $(pwd):/app -w /app -p 8080:8080 php -S 0.0.0.0:8080 -t public

$ alias composer='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer'

$ alias composer='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer composer'

$ docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer {comando}
```

```sh
$ docker run -itv $(pwd):/app -w /app -p 8080:8080 php -S 0.0.0.0:8080 -t public
$ docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer {comando}

$ alias php='docker run -itv $(pwd):/app -w /app -p 8080:8080 php'
$ alias composer='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer'
```

```sh
docker-compose down --rmi all -v
alias php8='docker run --rm -v $(pwd):/app php php'
alias phpComposer='docker run --rm -v $(pwd):/app composer composer'
alias composer='docker run --rm -u "$(id -u):$(id -g)" -v $(pwd):/var/www/html -w /var/www/html composer composer'
alias php='docker run --rm -u "$(id -u):$(id -g)" -v $(pwd):/var/www/html -w /var/www/html php php'
alias node='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) node node'
```

## COMANDO PARA TRABALHAR COM NODEJS
```
docker run -itv $(pwd):/usr/src/app -u $(id -u):$(id -g) -p 3000:3000 edu/node
```

### PARA TRABALHAR DENTRO DO CONTAINER
```
docker exec -it [NOME] bash
```

## NGINX

### Welcome do nginx
```sh
docker run --name docker-nginx -p 80:80 nginx
```