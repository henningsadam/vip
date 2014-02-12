class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :merchant_id
      t.string :company_name
      t.string :dba_name

      t.timestamps
    end
  end
end
