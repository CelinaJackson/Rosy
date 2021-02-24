class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :ratings_wines
  end
end
