class ApplicationController < ActionController::Base

  def first
    render({ :template => "/add.html.erb" })
  end
  def add_form
    render({ :template => "/something_templates/add.html.erb"})
  end
    def subtract_form
    render({ :template => "something_templates/subtract.html.erb"})
  end
    def multiply_form
    render({ :template => "something_templates/multiply.html.erb"})
  end
    def divide_form
    render({ :template => "something_templates/divide.html.erb"})
  end  

  def compute_addition
@first = params.fetch("second_num")
@second = params.fetch("first_num")
@result = @first.to_f + @second.to_f

render({ :template => "/something_templates/addition_results.html.erb"})
  end

    def compute_subtraction
@first = params.fetch("second_num")
@second = params.fetch("first_num")
@result = @first.to_f - @second.to_f

render({ :template => "/something_templates/subtraction_results.html.erb"})
  end

    def compute_multiplication
@first = params.fetch("second_num")
@second = params.fetch("first_num")
@result = @first.to_f * @second.to_f

render({ :template => "/something_templates/multiplication_results.html.erb"})
  end

    def compute_division
@first = params.fetch("second_num")
@second = params.fetch("first_num")
@result = @first.to_f / @second.to_f

render({ :template => "/something_templates/division_results.html.erb"})
  end
#     def compaute_addition
# @first = params.fetch("second_num")
# @second = params.fetch("first_num")
# @result = @first.to_f + @second.to_f

# render({ :template => "/something_templates/addition_results.html.erb"})
#   end

end
