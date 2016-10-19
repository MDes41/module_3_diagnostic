class SearchController < ApplicationController
  def index
    zip_code = params[:q]
    response = Faraday.get("http://developer.nrel.gov/api/energy_incentives/v2/dsire.json?address=#{zip_code}&api_key=46zlpB7V9VSagVhVzFgmLWjgD9sLlQdBCUeANumU")
    parsed_response = JSON.parse(response.body)
    byebug
  end
end
