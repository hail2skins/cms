# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  business_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(8, 2)
#

# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  business_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(8, 2)
#

# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  business_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(8, 2)
#

# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  cost        :integer
#  business_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Service < ActiveRecord::Base

	# a service may belong to one business through business_id
  belongs_to :business
  has_many :services_visits
  has_many :visits, through: :services_visits

  validates :business_id, presence: true
  validates_presence_of :name, :price
end
