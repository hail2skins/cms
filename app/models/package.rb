class Package < ActiveRecord::Base
  belongs_to :business
  has_many :prices, as: :cost
  accepts_nested_attributes_for :prices
  
  validates :business_id, presence: true

end
