class AddCategoryToAds < ActiveRecord::Migration
  def change
    add_column :ads, :category, :string
  end
end
