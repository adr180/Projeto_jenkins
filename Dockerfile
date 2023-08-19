#b Use uma imagem PHP como base
FROM php:8.0-cli

#b Defina o diretório de trabalho dentro do contêiner
WORKDIR /var/www/html

#b Copie os arquivos PHP do diretório do projeto para o contêiner
COPY index.php .

#b Exponha a porta 3000 para o host
EXPOSE 3000

#b Inicie o servidor web embutido do PHP na porta 3000
CMD ["php", "-S", "0.0.0.0:3000"]