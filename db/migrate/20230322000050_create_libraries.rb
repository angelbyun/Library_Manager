class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :city
      t.integer :opening_time
      t.integer :closing_time
      t.boolean :book_available

      t.timestamps
    end
  end
end
