require("spec_helper")
require('pry')

describe(Store) do

  it "lists all stores" do
    store1 = Store.create({:name => "Black Dog Shoes"})
    store2 = Store.create({:name => "Urban Pharm Footwear"})
    expect(Store.all).to eq [store1, store2]
  end

  it "validates presence of a name" do
    store = Store.new({:name => ""})
    store.save
    expect(store.save).to eq false
  end

  it { should validate_uniqueness_of(:name)}

end
