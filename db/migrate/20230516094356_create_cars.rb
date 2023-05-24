class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :color
      t.text :description
      t.boolean :available
      t.decimal :price

      t.timestamps
    end
  end
end
