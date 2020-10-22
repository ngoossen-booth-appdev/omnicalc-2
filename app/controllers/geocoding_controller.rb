class GeocodingController < ApplicationController
  def give_street
    render({ :template => "/something_templates/street_to_coords.html.erb"})
  end  
  def get_lat_lon

    @address_from_user = params.fetch("user_street_address")

    @gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @address_from_user + "&key="

        raw_data = open(@gmaps_url).read
    
    parsed_data = JSON.parse(raw_data)

    results_array = parsed_data.fetch("results")
    
    first_result = results_array.at(0)
    
    geometry_hash = first_result.fetch("geometry")
    
    location_hash = geometry_hash.fetch("location")
  
    @latitude = location_hash.fetch("lat")
    @longitude = location_hash.fetch("lng")
    render({ :template => "/something_templates/street_to_coords_results.html.erb"})

  end


end
