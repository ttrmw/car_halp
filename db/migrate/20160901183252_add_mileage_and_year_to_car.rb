class AddMileageAndYearToCar < ActiveRecord::Migration
  def change
    add_column :cars, :mileage, :integer
    add_column :cars, :year, :integer
  end
end
