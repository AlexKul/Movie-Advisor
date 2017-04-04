class AddGenre < ActiveRecord::Migration
  def change
  	add_column :movies, :genre, :string
  	add_column :movies, :link, :string
  	rename_column :movies, :rating, :score
  end
end
