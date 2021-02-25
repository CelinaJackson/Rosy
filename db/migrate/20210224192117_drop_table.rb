class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :rating_wines
  end
end
