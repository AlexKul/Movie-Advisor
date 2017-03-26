class CreateRelationshipsTable < ActiveRecord::Migration
  def change
    create_table :relations do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :movie, index: true
    	t.boolean :seen
    	t.boolean :like
    end
  end
end
