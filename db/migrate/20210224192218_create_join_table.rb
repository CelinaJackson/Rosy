class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :ratings, :wines do |t|
      t.index :rating_id
      t.index :wine_id
    end
  end
end
