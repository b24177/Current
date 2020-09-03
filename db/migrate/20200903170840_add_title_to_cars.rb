class AddTitleToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :title, :string
  end
end
