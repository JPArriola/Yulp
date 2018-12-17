class ChangePriceColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :businesses, :price
    add_column :businesses, :price, :string
  end
end
