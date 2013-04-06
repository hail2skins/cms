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

require 'spec_helper'

describe Service do
  pending "add some examples to (or delete) #{__FILE__}"
end
