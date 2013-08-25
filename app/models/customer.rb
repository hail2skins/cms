
class Customer < ActiveRecord::Base

  # a customer may belong to one business through business_id
  belongs_to :business

  # a customer has many visits
  has_many :visits
  accepts_nested_attributes_for :visits

  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true

  has_many :phones, as: :phoneable, dependent: :destroy
  accepts_nested_attributes_for :phones, allow_destroy: true

  validates :business_id, presence: true
  validates_presence_of :first_name, :last_name
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, allow_blank: true
  
   #simple interpolation with first and last name to a string on a name call.
  def name
    "#{first_name} #{last_name}".to_s   
  end  
end
