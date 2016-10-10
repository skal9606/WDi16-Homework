class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :author
      t.text :content

      #FOREIGN KEY
      t.integer :house_id
      t.timestamps null: false
    end
  end
end
