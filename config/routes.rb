Rails.application.routes.draw do
get("/", { :controller => "calculators", :action => "square_new" })
get("/square/results", { :controller => "calculators", :action => "square_results" })
get("/square/new", { :controller => "calculators", :action => "square_new" })
get("/square_root/new", { :controller => "calculators", :action => "square_root_new" })
get("/square_root/results", { :controller => "calculators", :action => "square_root_results" })
get("/payment/new", { :controller => "calculators", :action => "payment_new" })
get("/payment/results", { :controller => "calculators", :action => "payment_calc" })
get("/random/new", { :controller => "calculators", :action => "random_new" })
get("/random/results", { :controller => "calculators", :action => "random_results" })

end
