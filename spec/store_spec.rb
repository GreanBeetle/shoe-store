require("spec_helper")
require('pry')

describe(Store) do

  it "lists all stores" do
    store1 = Store.create({:name => "Black Dog Shoes"})
    store2 = Store.create({:name => "Urban Pharm Footwear"})
    expect(Store.all).to eq [store1, store2]
  end

end
