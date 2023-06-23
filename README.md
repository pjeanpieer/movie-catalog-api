# Movie Catalog Api

Esta API RESTful construída em Rails para um catálogo de filmes foi desenvolvida com dois endpoints GET para acessar determinados recursos. O primeiro endpoint é usado para importar informações dos filmes por meio de um arquivo CSV, enquanto o segundo é utilizado para listar todos os filmes cadastrados em formato JSON, permitindo filtragem por ano, título, gênero e mais.

# Endpoints

Este endpoint importa informações de filmes através de um arquivo CSV:

>GET/api/v1/movies/read_csv

![Screen Shot 2023-06-23 at 14 47 20](https://github.com/pjeanpieer/movie-catalog-api/assets/122786689/dbb6b7e7-af4c-4f39-8230-a3eec1f3e742)


Este endpoint lista todos os filmes cadastrados em formato JSON:

>GET/api/v1/movies

![Screen Shot 2023-06-23 at 14 49 00](https://github.com/pjeanpieer/movie-catalog-api/assets/122786689/4e464871-3f3b-49ce-832b-fc07fd7c07eb)


Para aplicar filtros de acordo com sua conveniência, utilize os parâmetros de consulta:

>GET/api/v1/movies?genre=Crime%20TV%20Shows,%20TV%20Dramas,%20TV%20Mysteries&year=2020

![Screen Shot 2023-06-23 at 14 46 14](https://github.com/pjeanpieer/movie-catalog-api/assets/122786689/e29d0de4-32d8-4127-92eb-752f2ac7e6a5)


# Como utilizar a API

1. Clone este repositório em sua máquina local:

>gh repo clone pjeanpieer/movie-catalog-api

2. Instale as dependências executando o seguinte comando:

>bundle install

3. Crie o banco de dados:

>rails db:create

4. Execute as migrações para configurar a estrutura do banco de dados:

>rails db:migrate

5. Execute o servidor do Rails:

>rails server

Uma vez que o servidor estiver em execução, você pode fazer solicitações aos endpoints mencionados usando a URL base http://localhost:3000.

# Testes

Para garantir o correto funcionamento da API RESTful, foram criados testes no controlador para testar os dois endpoints usando a extensão da biblioteca de testes RSpec.

>gema 'rspec-rails'

Execute no terminal:

>bundle exec rspec

![Alt text](<Screen Shot 2023-06-23 at 15.03.09.png>)
