class CreateCymbals < ActiveRecord::Migration[5.2]
  def change
    create_table :cymbals do |t|
      t.string :make
      t.string :model
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
