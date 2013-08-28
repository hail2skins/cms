class Price < ActiveRecord::Base
	belongs_to :cost, polymorphic: true
end