class Merchant < ActiveRecord::Base
  attr_accessible :company_name, :dba_name, :merchant_id, :institution_id

  belongs_to :institution
end
