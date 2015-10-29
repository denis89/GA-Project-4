class AddPhonenoToAd < ActiveRecord::Migration
  def change
    add_column :ads, :phone_no, :integer
  end
end
