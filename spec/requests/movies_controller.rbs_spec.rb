require 'rails_helper'

RSpec.describe Api::V1::MoviesController, type: :request do

  describe "GET /api/v1/movies/read_csv" do
    it "reads the CSV file and returns a successful response" do
      get "/api/v1/movies/read_csv"
      expect(response).to have_http_status(200)
    end

  end

  describe "GET /api/v1/movies" do
    it "returns a list of movies in JSON format" do
    # Crear algunos filmes en la base de datos con valores únicos generados por SecureRandom.uuid
      movie1 = Movie.create(title: "Titanic", genre: "Romance", id: SecureRandom.uuid)
      movie2 = Movie.create(title: "Avatar", genre: "Action", id: SecureRandom.uuid)

      get "/api/v1/movies"

      expect(response).to have_http_status(200)
      expect(response.content_type).to include("application/json")

      json_response = JSON.parse(response.body)
      expect(json_response).to be_an(Array)
      expect(json_response.length).to eq(2)

      movie_titles = json_response.map { |movie| movie["title"] }
      expect(movie_titles).to include("Titanic")
      expect(movie_titles).to include("Avatar")
    end
  end
end
