class User < ApplicationRecord
    has_many :ratings
    has_many :wines, through: :ratings 
    has_secure_password
    validates :password, confirmation: true 
    validates :email, uniqueness: true 
    validates :first_name, presence: true 
    validates :last_name, presence: true 
    validates :username, uniqueness: true, presence: true 
end
