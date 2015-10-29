class AddRecipeImageToAd < ActiveRecord::Migration
  def change
    add_column :ads, :recipe_image, :string
  end
end
