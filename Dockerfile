# FROM define a imagem base usada para criar o container.
# Neste exemplo, usamos uma imagem oficial do Ubuntu.
FROM ubuntu:24.04

# LABEL adiciona informações sobre a imagem.
# Pode ser usado para indicar autor, versão e descrição.
LABEL maintainer="Victor Julius"
LABEL version="1.0"
LABEL description="Exemplo de Dockerfile com as principais instruções"

# ENV cria uma variável de ambiente dentro do container.
ENV APP_ENV=development

# WORKDIR define o diretório de trabalho dentro do container.
# Os próximos comandos serão executados a partir desse diretório.
WORKDIR /app

# RUN executa comandos durante a construção da imagem.
# Aqui atualizamos os pacotes e instalamos o Python.
RUN apt-get update && \
    apt-get install -y python3 && \
    rm -rf /var/lib/apt/lists/*

# ADD adiciona arquivos ou diretórios do computador para dentro da imagem.
# Aqui copiamos a pasta app para o diretório /app do container.
ADD ./app /app

# EXPOSE documenta qual porta a aplicação utiliza.
EXPOSE 8000

# VOLUME define um local destinado ao armazenamento persistente de dados.
VOLUME ["/app/dados"]

# ENTRYPOINT define o programa principal executado quando o container inicia.
ENTRYPOINT ["python3"]

# CMD define o argumento padrão passado ao ENTRYPOINT.
# Neste exemplo, será executado: python3 app.py
CMD ["app.py"]