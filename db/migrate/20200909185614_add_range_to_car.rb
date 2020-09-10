class AddRangeToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :range, :integer
  end
end
