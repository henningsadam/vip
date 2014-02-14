class Merchant < ActiveRecord::Base
  attr_accessible :company_name, :dba_name, :merchant_id, :institution_id

  validates :merchant_id, 	:uniqueness => true
  validates :institution_id,:merchant_id, :company_name, :dba_name,
  					:presence => true

  belongs_to :institution
end
