class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :wine
    accepts_nested_attributes_for :wine
end
