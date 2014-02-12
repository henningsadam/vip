class AddClientIdToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :client_id, :integer
  end
end
