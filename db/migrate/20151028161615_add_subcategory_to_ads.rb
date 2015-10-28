class AddSubcategoryToAds < ActiveRecord::Migration
  def change
    add_column :ads, :subcategory, :string
  end
end
