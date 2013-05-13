# == Schema Information
#
# Table name: businesses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  owner_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

# == Schema Information
#
# Table name: businesses
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  street_address :string(255)
#  additional     :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip_code       :integer
#  description    :text
#  owner_id       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Business do
  pending "add some examples to (or delete) #{__FILE__}"
end
