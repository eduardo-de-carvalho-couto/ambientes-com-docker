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
```
composer install
```
### 4. Saia do container
```
exit
```

*Atenção ao arquivo '.gitignore', pois é possível que ele não esteja presente na raiz do seu projeto com adianti. Ao fazer um push para o seu projeto pessoal, certifique-se de ter o arquivo .gitignore na raiz do projeto com o '/vendor' no arquivo, como descrito no .gitignore desse subdiretório.*
