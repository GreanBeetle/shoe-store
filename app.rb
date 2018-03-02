require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/brands_stores")
require("./lib/brand")
require("./lib/store")
require("pry")

get('/') do
  erb(:home)
end

get('/home') do
  erb(:home)
end

get('/brand') do
  @brands = Brand.all
  erb(:brand)
end

get('/store') do
  @stores = Store.all
  erb(:store)
end

post('/store') do
  name = params[:name]
  Store.create({:name => name})
  redirect("/store")
end

post('/brand') do
  title = params[:title]
  price = params[:price]
  Brand.create({:title => title, :price => price})
  redirect("/brand")
end

get('/store/:id') do
  @store = Store.find(params.fetch("id").to_i())
  erb(:store_edit)
end

get('/brand/:id') do
  @brand = Brand.find(params.fetch("id").to_i())
  erb(:brand_edit)
end
