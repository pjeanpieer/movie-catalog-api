require 'csv'
require 'securerandom'

class Api::V1::MoviesController < ApplicationController

  before_action :check_database, only: [:read_csv]

  def read_csv
    response = { message: 'Download successful' }
    render json: JSON.pretty_generate(response)
  end

  def index

    # Ascending order by year
    @movies = Movie.order(year: :asc)

    # Filters movies based on the parameters provided in the request
    @movies = @movies.where(title: params[:title]) if params[:title].present?
    @movies = @movies.where(genre: params[:genre]) if params[:genre].present?
    @movies = @movies.where(year: params[:year]) if params[:year].present?
    @movies = @movies.where(country: params[:country]) if params[:country].present?
    @movies = @movies.where(published_at: params[:published_at]) if params[:published_at].present?
    @movies = @movies.where(description: params[:description]) if params[:description].present?

    # Render JSON except created and updated_at
    render json: JSON.pretty_generate(@movies.as_json(except: [:created_at, :updated_at]))
  end

  private

  def check_database

    return if Movie.exists?

    csv_text = File.read('netflix_titles.csv')
    csv = CSV.parse(csv_text, headers: true)

    csv.each do |row|
      Movie.find_or_create_by(
        id: SecureRandom.uuid,
        title: row['title'],
        genre: row['listed_in'],
        year: row['release_year'],
        country: row['country'],
        published_at: row['date_added'],
        description: row['description']
      )
    end

  end
end
