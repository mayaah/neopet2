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

class PetPet < ActiveRecord::Base
	belongs_to :pet

	validates :name, presence: true 
	validates :name, length: { in: 3..20 }
	validates :color, presence: true  
end
