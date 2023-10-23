require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square)
end

get("/square/new") do
  erb(:new_square)
end 

get("/square/results") do 
  erb(:square_results)
end

get("/square_root/new") do
end 

get("/payment/new") do 
end 

get("/random/new") do 
end 
