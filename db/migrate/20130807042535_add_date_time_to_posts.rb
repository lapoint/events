class AddDateTimeToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :datetime, :datetime
  end
end
