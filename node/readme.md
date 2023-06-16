# Ambiente de desenvolvimento Node (passo a passo)

## No terminal

### 1.
```
docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) node npm install
```
### 2.
```
docker-compose up -d
```
