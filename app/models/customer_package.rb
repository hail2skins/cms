class CustomerPackage < ActiveRecord::Base
  belongs_to :customer
  belongs_to :package
end
