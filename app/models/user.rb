class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :user_name, presence: :true
end
