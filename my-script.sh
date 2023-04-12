USER=$USER

chown -R $USER:$USER /var/www/html

echo "O proprietário e o grupo da pasta /var/www/html foram alterados para $USER:$USER."