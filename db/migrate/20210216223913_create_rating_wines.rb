class CreateRatingWines < ActiveRecord::Migration[6.0]
  def change
    create_table :rating_wines do |t|
      t.integer :wine_id
      t.integer :rating_id

      t.timestamps
    end
  end
end
