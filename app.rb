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
  redirect('/store')
end

post('/brand') do
  title = params[:title]
  price = params[:price]
  Brand.create({:title => title, :price => price})
  redirect("/brand")
end

get('/store/:id') do
  @store = Store.find(params.fetch("id").to_i)
  @brands = Brand.all - @store.brands
  @store_brands = @store.brands
  erb(:store_edit)
end

get('/brand/:id') do
  @brand = Brand.find(params.fetch("id").to_i)
  erb(:brand_edit)
end

patch('/store/:id') do
  new_name = params[:new_name]
  @id = params.fetch("id").to_i
  @store = Store.find(@id)
  @store.update(:name => new_name)
  redirect("/store/#{@id.to_s}")
end

delete('/store/:id') do
  @store = Store.find(params.fetch("id").to_i)
  @store.destroy
  redirect('/store')
end

patch('/add_brands/:id') do
  @id = params.fetch("id").to_i
  @store = Store.find(@id)
  brand_ids = params['brand_ids']
  brand_ids.each do |brand_id|
    brand_to_add = Brand.find(brand_id)
    @store.brands.push(brand_to_add)
  end
  redirect("/store/#{@id.to_s}")
end








# end
