class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.text :name
      t.text :address
      t.text :blurb
      t.text :about
      t.boolean :availability
      t.text :owner
      t.integer :price
      t.text :amenities
      t.text :house_rules
      t.text :image1
      t.text :image2
      t.text :image3
      t.text :image4
      t.text :image5

      t.timestamps null: false
    end
  end
end
