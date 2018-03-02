class Store < ActiveRecord::Base
  has_many :brands_stores # join
  has_many :brands, through: :brands_stores
end
