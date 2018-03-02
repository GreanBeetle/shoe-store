require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/brands_stores")
require("./lib/brand")
require("./lib/store")
require("pry")

get('/')do
  erb(:home)
end
