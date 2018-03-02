class Brand < ActiveRecord::Base
  has_many :brands_stores # join table
  has_many :stores, through: :brands_stores # two-way many-to-many relatioinship
  validates :title, :presence => true
  validates_uniqueness_of :title
  before_save :upcase_title

private
  def upcase_title
    self.title=self.title.capitalize
  end
end
