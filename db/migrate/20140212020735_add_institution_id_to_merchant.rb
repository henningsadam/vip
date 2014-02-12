class AddInstitutionIdToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :institution_id, :integer
  end
end
