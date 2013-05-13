# == Schema Information
#
# Table name: visits
#
#  id            :integer          not null, primary key
#  visit_notes   :text
#  date_of_visit :date
#  customer_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

# == Schema Information
#
# Table name: visits
#
#  id            :integer          not null, primary key
#  visit_notes   :text
#  date_of_visit :date
#  customer_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Visit < ActiveRecord::Base

 # each visit belongs to a customer through customer_id
  belongs_to :customer
  has_many :services_visits
  has_many :services, through: :services_visits
  
  accepts_nested_attributes_for :services

  validates :customer_id, presence: true
  validates_presence_of :date_of_visit, :visit_notes

end
