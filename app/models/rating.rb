class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :wine
    
    def wines_attributes=(wine_attributes)
        wine_attributes.values.each do |wine_attribute|
            wine = Wine.create_or_find_by(wine_attribute)
            self.wines << wine
        end 
    end 
end
