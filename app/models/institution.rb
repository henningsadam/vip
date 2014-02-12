class Institution < ActiveRecord::Base
  attr_accessible :institution_name

  belongs_to :client
  has_many :merchants
end
