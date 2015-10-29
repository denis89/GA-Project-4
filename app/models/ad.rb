class Ad < ActiveRecord::Base
  mount_uploader :recipe_image, RecipeImageUploader
  validates :title, :category, presence: true,
                    length: { minimum: 0 }
end