class AddLikedToComment < ActiveRecord::Migration
  def change
    add_column :comments, :liked, :boolean
  end
end
