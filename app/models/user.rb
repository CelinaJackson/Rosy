class User < ApplicationRecord
    has_many :ratings
    has_many :wines, through: :ratings 
    has_secure_password
end
