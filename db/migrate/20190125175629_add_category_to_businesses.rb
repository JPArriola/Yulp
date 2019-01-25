class AddCategoryToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :category, :string
  end
end
