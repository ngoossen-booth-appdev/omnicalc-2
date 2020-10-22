class GeocodingController < ApplicationController
  def get_lat_lon

    @address_from_user = params.fetch("user_street_address")

    @gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address="+@address_from_user+"&key=AIzaSyDB6uZXmYRlo88RLhAxD-yxUbMIZd4oHpg"

    raw_data = open(@gmaps_url).read

    parsed_data = JSON.parse(raw_data)

    results_array = parsed_data.fetch("results")
    geometry_array = results_array.fetch("geometry")
    location_array = geometry_array.fetch("location")
    @latitude = location_array.fetch("lat")
    @longitude = location_array.fetch("lng")
    render({ :template => "/something_templates/street_to_coords_results.html.erb"})

  end


end
