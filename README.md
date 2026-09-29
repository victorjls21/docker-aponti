# Docker Aponti

Este repositório contém uma atividade prática sobre **Dockerfile**, desenvolvida com o objetivo de estudar e compreender as principais instruções utilizadas na criação de imagens Docker.

## Objetivo

O objetivo da atividade é apresentar exemplos de comandos importantes presentes em um Dockerfile, como:

- `FROM`
- `LABEL`
- `ENV`
- `WORKDIR`
- `RUN`
- `ADD`
- `EXPOSE`
- `VOLUME`
- `ENTRYPOINT`
- `CMD`

Cada instrução foi comentada no próprio arquivo `Dockerfile`, explicando sua função.

## Estrutura do projeto

```text
docker-aponti/
├── Dockerfile
└── app/
    └── app.py

    
## Como Executar

Primeiro, construa a imagem Docker:
docker build -t docker-aponti .

Depois, execute o container:
docker run docker-aponti

A saída esperada é:
Aplicação executada dentro de um container Docker!
