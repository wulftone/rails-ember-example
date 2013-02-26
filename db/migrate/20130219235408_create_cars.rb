class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :color
      t.string :engine
      t.string :model_name
      t.integer :year

      t.references :make
      t.timestamps
    end
    add_index :cars, :make_id
  end
end
