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
  get("/muggle_add", {:controller => "application", :action => "compute_addition" })

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
