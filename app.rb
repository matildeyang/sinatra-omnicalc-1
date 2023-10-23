require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square)
end

get("/square/results") do
end 

get("/square_root/results") do
end 

get("/payment/results") do 
end 

get("/random/results") do 
end 
