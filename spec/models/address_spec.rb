# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  line1            :string(255)
#  line2            :string(255)
#  city             :string(255)
#  state            :string(2)
#  zip              :integer
#  addressable_id   :integer
#  addressable_type :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  line1            :string(255)
#  line2            :string(255)
#  city             :string(255)
#  state            :string(2)
#  zip              :integer
#  addressable_id   :integer
#  addressable_type :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

require 'spec_helper'

describe Address do
  pending "add some examples to (or delete) #{__FILE__}"
end
