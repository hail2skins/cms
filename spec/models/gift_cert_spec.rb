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

require 'spec_helper'

describe GiftCert do
  pending "add some examples to (or delete) #{__FILE__}"
end
