class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :model_id
      t.string :url
      t.string :site
      t.float :price
      t.boolean :available

      t.timestamps null: false
    end
  end
end
