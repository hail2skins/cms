# == Schema Information
#
# Table name: businesses
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  street_address :string(255)
#  additional     :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip_code       :integer
#  description    :text
#  owner_id       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Business < ActiveRecord::Base

 # each business belongs to user, through user_id
  belongs_to :user

  # each business has many customers and has many services
  has_many :customers
  has_many :services

  validates :owner_id, presence:true
  validates_presence_of :name, :street_address, :city, :zip_code, :state
  validates_length_of :state, is: 2

end
