class AddNameToAd < ActiveRecord::Migration
  def change
    add_column :ads, :name, :string
  end
end
