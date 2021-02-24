class AddColumnToRatings < ActiveRecord::Migration[6.0]
  def change
    add_column :ratings, :wine_id, :integer
  end
end
