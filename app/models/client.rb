class Client < ActiveRecord::Base
  attr_accessible :company_name

  has_many :institutions
end
