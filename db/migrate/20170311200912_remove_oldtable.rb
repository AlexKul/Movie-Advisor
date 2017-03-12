class RemoveOldtable < ActiveRecord::Migration
  def change
  	drop_table :black_jack_sessions
  	drop_table :dealers
  	drop_table :expression_of_interests
  	drop_table :project_evaluations
  	drop_table :student_rankings
  	drop_table :students
  	drop_table :table_games
  end
end
