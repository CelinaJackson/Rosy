class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :wine
    validates :wine, presence: true 
    validates :description, presence: true 
    validates :rating_number, presence: true 
    accepts_nested_attributes_for :wine
end
