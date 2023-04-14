FROM wordpress:latest

# Definindo argumento do NOME do USUARIO do container
ENV USER edu
ARG user=$USER

#Definindo argumento de UID do do USUARIO do container
ENV UID 1000
ARG uid=$UID

# Criando usuario do sistema
RUN useradd -G www-data,root -u $uid -d /home/$user -m $user
RUN chown -R $user:$user /home/$user

#Depois de instalador e cadastrado primeiro usuario do wordpress. Execute esse script dentro do container.
#O my-script.sh resolve problemas de permissão que o host pode ter, caso ele queira criar volumes e arquivos por fora do container
ENV MY_SCRIPT /usr/local/bin/my-script.sh
COPY my-script.sh /usr/local/bin/

#Transformando o script em arquivo executável
RUN chmod +x /usr/local/bin/my-script.sh

