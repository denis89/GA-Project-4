class RemoveSubcategoryFromAds < ActiveRecord::Migration
  def change
    remove_column :ads, :subcategory, :string
  end
end
