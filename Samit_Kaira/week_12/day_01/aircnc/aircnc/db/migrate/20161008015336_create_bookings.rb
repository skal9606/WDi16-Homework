class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.text :name
      t.date :start_date
      t.date :end_date
      t.integer :guests

      #FOREIGN KEYS
      t.integer :house_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
