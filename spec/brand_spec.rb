require("spec_helper")
require('pry')

describe(Brand) do

  it "lists all brands" do
    brand1 = Brand.create({:title => "mizuno", :price => "$99"})
    brand2 = Brand.create({:title => "adidas", :price => "$199"})
    expect(Brand.all).to eq [brand1, brand2]
  end

end


# it "ensures ingredient name contains only letters" do
#   ingredient = Ingredient.create({:name => "efgABC"})
#   expect(ingredient.save).to eq true
# end
