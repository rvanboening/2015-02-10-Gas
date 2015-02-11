require "sinatra"

get "/" do
  erb :homepage
end

get "/calculator" do
  
  logger.info params
  erb :form
  
end


get "/results" do
  @results = (params[:amount].to_i * 1.97)
  "Your total is  #{params["@results"]}."
end
