# == Schema Information
#
# Table name: services_visits
#
#  id         :integer          not null, primary key
#  service_id :integer          not null
#  visit_id   :integer          not null
#  created_at :datetime
#  updated_at :datetime
#


class ServicesVisit < ActiveRecord::Base
	belongs_to :service
	belongs_to :visit
end
