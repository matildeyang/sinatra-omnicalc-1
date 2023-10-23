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
  erb(:new_payment)
end 

get("/payment/results") do 
  @apr = params.fetch("apr").to_f.round(4)
  @principal = params.fetch("principal")
  @year = params.fetch("year")

  @n = @year.to_f * 12
  @rate = @apr.to_f/100/12

  @numerator = @rate * @principal.to_f
  @denominator = 1 - (1 + @rate)**-@n

  @payment = (@numerator/@denominator).round(2)
  
  erb(:payment_results)
end 

get("/random/new") do 
  erb(:new_random)
end 

get("/random/results") do 
  @min = params.fetch("minimum").to_f
  @max = params.fetch("maximum").to_f
  @result = rand(@min..@max)

  erb(:random_results)
end 
