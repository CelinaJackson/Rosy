class Wine < ApplicationRecord
    has_many :ratings
    has_many :users, through: :ratings
    has_many :rating_wines
end
