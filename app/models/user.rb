class User < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name, :password

  validates :email_address, :first_name, :last_name, presence: true
end
