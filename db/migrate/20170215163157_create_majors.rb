class CreateMajors < ActiveRecord::Migration[5.0]
  def change
    create_table :majors do |t|
      t.string :name
      t.text :notice
      t.datetime :book_start
      t.datetime :book_end

      t.timestamps
    end
  end
end
