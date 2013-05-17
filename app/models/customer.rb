
class Customer < ActiveRecord::Base

  # a customer may belong to one business through business_id
  belongs_to :business

  # a customer has many visits
  has_many :visits
  accepts_nested_attributes_for :visits

  has_one :address, as: :addressable
  accepts_nested_attributes_for :address

  validates :business_id, presence: true
  validates_presence_of :first_name, :last_name, :phone, :email
  validates :phone, numericality: { only_integer: true }, length: { is: 10 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

   #simple interpolation with first and last name to a string on a name call.
  def name
    "#{first_name} #{last_name}".to_s   
  end  
end
