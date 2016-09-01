class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.date :manufactured_from
      t.date :manufactured_until
      t.float :engine_size
      t.integer :doors
      t.string :trim
      t.string :body
      t.integer :fuel

      t.timestamps null: false
    end
  end
end
