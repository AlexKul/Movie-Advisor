class ModifyMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :title, :string, default: 'unknown'
  	add_column :movies, :year, :integer, default: 'unknown'
  	add_column :movies, :rating, :string, default: 'unknown'
  end
end
