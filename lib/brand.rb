class Brand < ActiveRecord::Base
  has_many :brands_stores # join table
  has_many :stores, through: :brands_stores # two-way many-to-many relatioinship
  validates :title, {:presence => true, :length => {:maximum => 25}}
  validates_uniqueness_of :title
  before_save :capitalize_title

private
  def capitalize_title
    self.title=self.title.capitalize
  end
end
