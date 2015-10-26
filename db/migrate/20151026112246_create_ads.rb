class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
