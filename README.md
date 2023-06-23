# Movie Catalog Api

Esta API RESTful construída em Rails para um catálogo de filmes foi desenvolvida com dois endpoints GET para acessar determinados recursos. O primeiro endpoint é usado para importar informações dos filmes por meio de um arquivo CSV, enquanto o segundo é utilizado para listar todos os filmes cadastrados em formato JSON, permitindo filtragem por ano, título, gênero e mais.

# Endpoints

Este endpoint importa informações de filmes através de um arquivo CSV:

>GET/api/v1/movies/read_csv

Este endpoint lista todos os filmes cadastrados em formato JSON:

>GET/api/v1/movies

Para aplicar filtros de acordo com sua conveniência, utilize os parâmetros de consulta:

>GET/api/v1/movies?genre=Crime%20TV%20Shows,%20TV%20Dramas,%20TV%20Mysteries&year=2020

# Como utilizar a API

1. Clone este repositório em sua máquina local:

>git clone https://github.com/tu-usuario/tu-repositorio.git

2. Instale as dependências executando o seguinte comando:

>bundle install

3. Crie o banco de dados:

>rails db:create

4. Execute as migrações para configurar a estrutura do banco de dados:

>rails db:migrate

5. Execute o servidor do Rails:

>rails server

Uma vez que o servidor estiver em execução, você pode fazer solicitações aos endpoints mencionados usando a URL base http://localhost:3000.
