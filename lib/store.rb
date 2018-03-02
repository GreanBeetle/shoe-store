class Store < ActiveRecord::Base
  has_many :brands_stores # join
  has_many :brands, through: :brands_stores
  validates :name, :presence => true
  validates_uniqueness_of :name 
end
