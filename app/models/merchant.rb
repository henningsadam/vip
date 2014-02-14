class Merchant < ActiveRecord::Base
  attr_accessible :company_name, :dba_name, :merchant_id, :institution_id, :email

  validates :merchant_id, 	:uniqueness => true
  validates :institution_id,:merchant_id, :company_name, :dba_name,
  					:presence => true

  belongs_to :institution


  after_create :send_new_merchant_confirmation
  after_destroy :send_delete_merchant_confirmation

  private

  def send_new_merchant_confirmation
  	MerchantMailer.send_new_merchant_confirmation(self).deliver
  end

  def send_delete_merchant_confirmation
  	MerchantMailer.send_delete_merchant_confirmation(self).deliver
  end
end
