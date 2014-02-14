class MerchantMailer < ActionMailer::Base
  # use default if all mailers below have the same behavior (i.e. all are sent from from@example.com)
  # default from: "from@example.com"

  def new_merchant_confirmation(merchant)
  	mail(to: merchant.email, subject: "Your New VIP Merchant Account", from: "notifications@example.com")
  end
end
