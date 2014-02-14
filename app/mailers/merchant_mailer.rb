class MerchantMailer < ActionMailer::Base
  # use default if all mailers below have the same behavior (i.e. all are sent from from@example.com)
  # default from: "from@example.com"

  layout "email_layout"

  def send_new_merchant_confirmation(merchant)
  	mail(to: merchant.email, subject: "Your New VIP Merchant Account", from: "notifications@example.com")
  end

  def send_delete_merchant_confirmation(merchant)
  	mail(to: merchant.email, subject: "VIP Merchant Account Deleted", from: "notifications@example.com")
  end
end
