class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.references :library, foreign_key: true
      t.string :title
      t.string :author
      t.boolean :fiction
      t.integer :number_of_copies

      t.timestamps
    end
  end
end
