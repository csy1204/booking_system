class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :major_id
      t.integer :len_x
      t.integer :len_y
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
