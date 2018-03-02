ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("sinatra/activerecord")
require("brand")
require("store")
require("brands_stores")

RSpec.configure do |config| # clear db between spec runs
  config.after(:each) do
    Brand.all.each do |brand|
      brand.destroy
    end
  end
end

RSpec.configure do |config| # clear db between spec runs
  config.after(:each) do
    Store.all.each do |store|
      store.destroy
    end
  end
end
