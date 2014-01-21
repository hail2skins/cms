# == Schema Information
#
# Table name: gift_certs
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  number        :integer
#  value         :integer
#  description   :text
#  customer_id   :integer
#  redeemed      :integer
#  date_redeemed :date
#  created_at    :datetime
#  updated_at    :datetime
#

class GiftCert < ActiveRecord::Base
end
