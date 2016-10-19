class SearchController < ApplicationController
  def index
    zip_code = params[:q]
    response = Faraday.get("http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=ELEC,LPG&location=80203&raduis=6&api_key=46zlpB7V9VSagVhVzFgmLWjgD9sLlQdBCUeANumU")
    parsed_response = JSON.parse(response.body)
    stations = parsed_response['fuel_stations']
    byebug
  end
end
