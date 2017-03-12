class AddPicturesToTables < ActiveRecord::Migration
  def change
  	add_attachment :users, :picture
  	add_attachment :movies, :picture
  end
end
