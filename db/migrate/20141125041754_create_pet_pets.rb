class CreatePetPets < ActiveRecord::Migration
  def change
    create_table :pet_pets do |t|
    	t.string :name
    	t.string :color

      t.timestamps
    end
  end
end
