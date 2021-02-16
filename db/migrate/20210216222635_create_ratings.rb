class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :wine
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
