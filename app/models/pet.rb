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

class Pet < ActiveRecord::Base
	belongs_to :user
	has_many :pet_pets

	validates :name, presence: true
	validates :name, length: { in: 3..20 }
	validates :color, presence: true    
end
