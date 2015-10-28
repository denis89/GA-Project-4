class RemoveCategoryFromAds < ActiveRecord::Migration
  def change
    remove_column :ads, :category, :string
  end
end
