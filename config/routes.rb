Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  # Square (e.g., http://localhost:3000/square/8)
  get("/square/:id", { :controller => "calculations", :action => "square" })

  # Square Root (e.g., http://localhost:3000/square_root/8)
  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })

  # Random Number (e.g., http://localhost:3000/random/50/100)
  get("/random/:min/:max", { :controller => "calculations", :action => "random_number" })

  # Payment (e.g., http://localhost:3000/payment/410/30/250000)
  get("/payment/:interest_rate/:number_of_years/:principal_value", { :controller => "calculations", :action => "payment" })

end
