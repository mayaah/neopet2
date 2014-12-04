class AddPetIdToPetPet < ActiveRecord::Migration
  def change
  	add_column :pet_pets, :pet_id, :integer
  end
end
