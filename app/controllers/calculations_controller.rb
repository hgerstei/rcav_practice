class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @url = "http://localhost:3000/square/:id"
    @user_input = params[:id]
    @square = @user_input.to_f * @user_input.to_f
  end

  def square_root
    @url = "http://localhost:3000/square_root/:id"
    @user_input = params[:id]
    @square_root = Math.sqrt(@user_input.to_f)
  end

  def random_number
    @url = "http://localhost:3000/random/:min/:max"
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random_number = rand(@min...@max).to_i
  end

  def payment
    # P = (r * A) / (1 - (1+r) ^ (-N))
    @url = "http://localhost:3000/payment/interest_rate/number_of_years/principal_value"
    @interest_rate = params[:interest_rate].to_f / 100
    @number_of_years = params[:number_of_years].to_i
    @principal_value = params[:principal_value].to_i
    @payment = (@interest_rate / 1200 * @principal_value) / (1 - (1 + (@interest_rate / 1200)) ** (@number_of_years * -12))
  end

end
