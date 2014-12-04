# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)
#  hunger     :integer
#  loyalty    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Pet, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
