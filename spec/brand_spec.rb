require("spec_helper")
require('pry')

describe(Brand) do

  it "lists all brands" do
    brand1 = Brand.create({:title => "mizuno", :price => "$99"})
    brand2 = Brand.create({:title => "adidas", :price => "$199"})
    expect(Brand.all).to eq [brand1, brand2]
  end

  it "validates presence of a title" do
    brand = Brand.new({:title => "", :price => "$234"})
    expect(brand.save).to eq false
  end

  it 'capitalizes first letter of title' do
      brand = Brand.new({:title => "saucony", :price => "$234"})
      brand.save
      expect(brand.title).to eq "Saucony"
  end

  it { should validate_uniqueness_of(:title)}

end
