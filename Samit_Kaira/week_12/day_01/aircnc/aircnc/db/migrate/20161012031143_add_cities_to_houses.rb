class AddCitiesToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :city, :text
  end
end
