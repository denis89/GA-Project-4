class AddPriceToAd < ActiveRecord::Migration
  def change
    add_column :ads, :price, :integer
  end
end
