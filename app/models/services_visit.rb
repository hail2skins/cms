class ServicesVisit < ActiveRecord::Base
	belongs_to :service
	belongs_to :visit
end
