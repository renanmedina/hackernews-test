## O Problema

Como um programador que gostaria de me manter atualizado, utilizo bastante o Hacker News (https://news.ycombinator.com), que é um portal onde é possível discutir histórias relevantes de tecnologia publicadas na internet.

O problema é que o portal Hacker News não é nada intuitivo, é complicado de encontrar coisas, e as discussões ficam muito perdidas.

Gostaria de construir um site, que lista as _top_ 15 histórias do Hacker News e mostra apenas os comentários relevantes dessas histórias. Além disso me permita buscar por alguma palavra chave.

Funcionalidades:
1. Implementar o layout de acordo com a proposta. Pode ter adaptações, mas o mais próximo possível da sugestão
2. Mostrar em uma lista, ordenado pelo mais recente, as 15 top histórias do hacker news, de acordo com o layout.
3. Exibir apenas os comentários relevantes destas histórias. Comentários relevantes são aqueles que possuem mais de 20 palavras.
4. Permitir buscar por alguma palavra chave e mostrar os 10 resultados mais recentes. Não precisa considerar as top stories nesta busca.

Requisitos:
1. Deve ser implementado em Ruby
2. Usar a API do Hacker News: https://github.com/HackerNews/API
3. O código deve ser desenvolvido utilizando um repositório git público no seu perfil do Github ou BitBucket

### Guia de execução

Requisitos:

* Ruby >= 2.7.1
* NodeJS >= 12.14.1
* Yarn >= 1.21.1
* RubyGems >= 3.0
* PostgreSQL >= 9.3

### Passo a passo

## Docker Compose

Disponível no projeto há um docker-compose.yml para facilitar a inicialização da aplicação utilizando docker.

1. Para inicializar os containers, utilize o comando abaixo:

```bash
docker-compose up --build
```

Este comando irá inicializar os containers web e db. a aplicação estara disponível em: http://localhost:3000

## Build Manual
1. Clone o projeto do github na sua maquina local e instale as dependencias do projeto:

```bash
$ bundle install && yarn install
```

2. Copie o arquivo de environment e troque pelas suas devidas informações:

```bash
$ cp .env.default .env
```

3. Inicialize o banco de dados:

```bash
$ rails db:setup
```

## Testes

Para rodar a suíte de testes, execute o comando abaixo:

```
$ bundle exec rspec spec/
```
