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
├── README.md
└── app/
    └── app.py
```

## Como Executar

Primeiro, construa a imagem Docker:

```bash
docker build -t docker-aponti .
```

Depois, execute o container:

```bash
docker run docker-aponti
```

A saída esperada é:

```text
Aplicação executada dentro de um container Docker!
```

## Observações

O `Dockerfile` utiliza uma imagem do Ubuntu como base e instala o Python durante o processo de construção da imagem.

O comando `RUN` é executado durante a criação da imagem, enquanto `ENTRYPOINT` e `CMD` definem o comportamento do container quando ele é iniciado.

A instrução `ADD` foi utilizada para adicionar os arquivos da aplicação ao container.
