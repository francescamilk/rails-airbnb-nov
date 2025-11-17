class FlatsController < ApplicationController
  def index
    # https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json
    response = HTTParty.get("https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json")
    @flats = JSON.parse(response)
  end
end
