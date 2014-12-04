# == Schema Information
#
# Table name: pet_pets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe PetPet, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
