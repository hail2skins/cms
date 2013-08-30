class Package < ActiveRecord::Base
  belongs_to :business
  has_many :services_packages
  has_many :services, through: :services_packages
  accepts_nested_attributes_for :services 

  has_many :customers_packages
  has_many :customers, through: :customers_packages

  has_many :prices, as: :cost
  accepts_nested_attributes_for :prices
   
  validates :business_id, presence: true

end
