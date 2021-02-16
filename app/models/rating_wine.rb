class RatingWine < ApplicationRecord
    belongs_to :rating 
    belongs_to :wine 
end
