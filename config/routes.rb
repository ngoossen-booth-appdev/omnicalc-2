Rails.application.routes.draw do

  get("/", {:controller => "application", :action => "first" })
  get("/add", {:controller => "application", :action => "add_form" })
  get("/subtract", {:controller => "application", :action => "subtract_form" })
  get("/multiply", {:controller => "application", :action => "multiply_form" })
  get("/divide", {:controller => "application", :action => "divide_form" })

  get("/wizard_add", {:controller => "application", :action => "compute_addition" })
  get("/wizard_subtract", {:controller => "application", :action => "compute_subtraction" })
  get("/wizard_multiply", {:controller => "application", :action => "compute_multiplication" })
  get("/wizard_divide", {:controller => "application", :action => "compute_division" })
  get("/street_to_coords/new", {:controller => "geocoding", :action => "give_street"}  )
  get("/street_to_coords/results", {:controller => "geocoding", :action => "get_lat_lon"}  )
  get("/coords_to_weather/new", {:controller => "weather", :action => "give_coords"}  )
  get("/coords_to_weather/results", {:controller => "weather", :action => "get_weather"}  )
  get("/street_to_weather/new", {:controller => "weather", :action => "give_street"}  )
  # get("/street_to_weather/results", {:controller => "weather", :action => "get_weather"}  )
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
