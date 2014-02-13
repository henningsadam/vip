class Merchant < ActiveRecord::Base
  attr_accessible :company_name, :dba_name, :merchant_id, :institution_id

  validates :merchant_id, 	:uniqueness => true,
  							:presence => true
  validates :institution_id, :presence => true

  belongs_to :institution
end
