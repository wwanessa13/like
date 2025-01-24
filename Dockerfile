# Usar imagem base do R
FROM r-base:latest

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev

# Instalar o pacote plumber
RUN R -e "install.packages('plumber', repos = 'https://cloud.r-project.org')"

# Copiar o script e o modelo para o container
COPY exemplo_api.R /app/exemplo_api.R
COPY modelo_rf.rds /app/modelo_rf.rds

# Configurar o diretório de trabalho
WORKDIR /app

# Comando para iniciar o serviço
CMD ["Rscript", "exemplo_api.R"]

