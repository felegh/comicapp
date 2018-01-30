class User < ApplicationRecord
validates :username, presence: true, length: { maximum: 50 }
validates :email, presence: true, uniqueness: true
validates :password, confirmation: true, length: {maximum: 6} 
has_secure_password
end
