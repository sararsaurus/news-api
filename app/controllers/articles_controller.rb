class ArticlesController < ApplicationController
  def index
    key = Rails.application.credentials.news_api[:api_key]

    response = HTTP.get("https://newsapi.org/v2/everything?q=cybersecurity&apiKey=#{key}")

    cyber_data = response.parse(:json)
    articles = cyber_data["articles"]

    render json: articles
  end
end
