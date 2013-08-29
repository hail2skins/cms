# == Schema Information
#
# Table name: phones
#
#  id             :integer          not null, primary key
#  number         :string(10)
#  phoneable_id   :integer
#  phoneable_type :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Phone do
  pending "add some examples to (or delete) #{__FILE__}"
end
