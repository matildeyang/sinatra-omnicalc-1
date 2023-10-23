require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square)
end

get("/square/new") do
  erb(:new_square)
end 

get("/square/results") do 
  @the_num = params.fetch("num")
  @the_result = @the_num.to_f**2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root)
end 

get("/square_root/results") do 
  @the_num = params.fetch("num")
  @the_result = @the_num.to_f ** 0.5
  erb(:square_root_results)
end 

get("/payment/new") do 
end 

get("/random/new") do 
end 
