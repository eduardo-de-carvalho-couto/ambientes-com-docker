docker-compose down --rmi all -v
alias php8='docker run --rm -v $(pwd):/app php php'
alias phpComposer='docker run --rm -v $(pwd):/app composer composer'
alias composer='docker run --rm -u "$(id -u):$(id -g)" -v $(pwd):/var/www/html -w /var/www/html composer composer'
alias php='docker run --rm -u "$(id -u):$(id -g)" -v $(pwd):/var/www/html -w /var/www/html php php'
alias node='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) node node'

CRIAR UMA APLICAÇÃO UTILIZANDO REACT:
	docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) node npx create-react-app ./
	docker run -itv $(pwd):/usr/src/app -u $(id -u):$(id -g) -p 3000:3000 --name meu-app node
	*Depois, em outro terminal, entre dentro do container, vá na pasta do app e coloque*
	npm start
	
	*Definindo um network específico*
	docker run -itv $(pwd):/usr/src/app -u $(id -u):$(id -g) -p 3000:3000 --name meu-app --network meu_network node


docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs

INSTALAR PACKAGE.JSON
	docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) node npm install


$ alias php='docker run -itv $(pwd):/app -w /app -p 8080:8080 php'

$ docker run -itv $(pwd):/app -w /app -p 8080:8080 php -S 0.0.0.0:8080 -t public

$ alias composer='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer'

	alias composer='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer composer'

$ docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer {comando}


{
	$ docker run -itv $(pwd):/app -w /app -p 8080:8080 php -S 0.0.0.0:8080 -t public
	$ docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer {comando}

	$ alias php='docker run -itv $(pwd):/app -w /app -p 8080:8080 php'
	$ alias composer='docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer'
}

COMANDO PARA TRABALHAR COM NODEJS
	docker run -itv $(pwd):/usr/src/app -u $(id -u):$(id -g) -p 3000:3000 edu/node
	
	PARA TRABALHAR DENTRO DO CONTAINER
		docker exec -it [NOME] bash


SYMFONY
	composer create-project symfony/skeleton api-transferencia
	composer create-project symfony/skeleton consultorio-alura "^4.2"

	composer require annotation

	composer require doctrine/orm

	composer require "doctrine/migrations"

NGINX

	Welcome do nginx
		- docker run --name docker-nginx -p 80:80 nginx