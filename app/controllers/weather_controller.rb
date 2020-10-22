class WeatherController < ApplicationController
  def give_coords
    render({ :template => "/something_templates/coords_to_weather.html.erb"})
  end  
  def get_weather

    @lat_from_user = params.fetch("user_latitude")
    @lng_from_user = params.fetch("user_latitude")

    darksky_key = ENV.fetch("DARK_SKY_KEY")

    
    @darksky_url = "https://api.darksky.net/forecast/"+ darksky_key + "/" + @lat_from_user + "," + @lng_from_user

    raw_data = open(@darksky_url).read
    
    parsed_data = JSON.parse(raw_data)

    current = parsed_data.fetch("currently")
    hourly = parsed_data.fetch("hourly")
    

    days = parsed_data.fetch("daily")
    daily_data = days.
    today = days.at(0)



    @current_temp = current.fetch("temperature")
    @current_summary = current.fetch("summary")
    @outlook_hour = "poop"
    @outlook_several_hours = hourly.fetch("summary")
    @outlook_several_days = days.fetch("summary")
    
    
    # results_array = parsed_data.fetch("results")
    
    # first_result = results_array.at(0)
    
    # geometry_hash = first_result.fetch("geometry")
    
    # location_hash = geometry_hash.fetch("location")
  
    # @latitude = location_hash.fetch("lat")
    # @longitude = location_hash.fetch("lng")
    render({ :template => "/something_templates/coords_to_weather_results.html.erb"})

  end


end
