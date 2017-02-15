class CreateLockers < ActiveRecord::Migration[5.0]
  def change
    create_table :lockers do |t|
      t.integer :section_id
      t.integer :loc_y
      t.integer :loc_x
      t.string :loc_name
      t.boolean :loc_state

      t.timestamps
    end
  end
end
