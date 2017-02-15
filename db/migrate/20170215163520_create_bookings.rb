class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :locker_id
      t.integer :user_id
      t.integer :major_id
      t.datetime :use_start
      t.datetime :use_end
      t.string :use_state

      t.timestamps
    end
  end
end
