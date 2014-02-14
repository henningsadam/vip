class Merchant < ActiveRecord::Base
  attr_accessible :company_name, :dba_name, :merchant_id, :institution_id, :email

  validates :merchant_id, 	:uniqueness => true
  validates :institution_id,:merchant_id, :company_name, :dba_name,
  					:presence => true

  belongs_to :institution


  after_create :new_merchant_confirmation

  private

  def new_merchant_confirmation
  	MerchantMailer.new_merchant_confirmation(self).deliver
  end
end
