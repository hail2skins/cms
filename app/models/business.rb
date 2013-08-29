# == Schema Information
#
# Table name: businesses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  owner_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Business < ActiveRecord::Base

 # each business belongs to user, through user_id
  belongs_to :owner
  has_one :address, as: :addressable
  accepts_nested_attributes_for :address

  # each business has many customers and has many services
  has_many :customers
  has_many :services
  has_many :packages

  validates :owner_id, presence:true
  validates_presence_of :name
  #validates_length_of :state, is: 2

end
