class AddEmailToMerchant < ActiveRecord::Migration
  def change
  	add_column :merchants, :email, :string
  end
end
