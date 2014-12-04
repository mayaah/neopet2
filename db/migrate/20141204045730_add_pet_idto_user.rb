class AddPetIdtoUser < ActiveRecord::Migration
  def change
  	add_column :users, :pet_id, :integer
  end
end
