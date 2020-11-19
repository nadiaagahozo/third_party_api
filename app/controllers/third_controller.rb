class ThirdController < ApplicationController
  def index
    response = HTTP.get("https://api.giphy.com/v1/gifs/trending?api_key=#{Rails.application.credentials.giphy_api[:api_key]}")
    render json: response.parse
  end
end

# api.giphy.com/v1/gifs/trending
# 