class ChangeRatingToRatingNumber < ActiveRecord::Migration[6.0]
  def change
    rename_column :ratings, :rating, :rating_number
  end
end
