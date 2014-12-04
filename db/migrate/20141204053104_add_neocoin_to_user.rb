class AddNeocoinToUser < ActiveRecord::Migration
  def change
  	add_column :users, :neocoin, :integer
  end
end
