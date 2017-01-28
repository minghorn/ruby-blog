class ChangePostsTable < ActiveRecord::Migration[5.0]
  def change
	  change_table :posts do |t|
	  	t.belongs_to :author, index: true
	  end
  end
end
