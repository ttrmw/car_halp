class CreateFlaws < ActiveRecord::Migration
  def change
    create_table :flaws do |t|
      t.integer :model_id
      t.integer :mileage
      t.string :description
      t.integer :cost_estimate

      t.timestamps null: false
    end
  end
end
