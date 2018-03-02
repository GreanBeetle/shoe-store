class Brand < ActiveRecord::Base
  has_many :brands_stores # join table
  has_many :stores, through: :brands_stores # two-way many-to-many relatioinship
end
