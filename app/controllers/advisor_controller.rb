class AdvisorController < ApplicationController
  

  def index

  end

  def begin
  	@movies = Movie.all

  	@relations = Relation.all.where user: current_user

  	@old_movies = []
  	@relations.each { |r| @old_movies << r.movie}

  	@new_movies = @movies - @old_movies

  	@first_movie = @new_movies.first
	
  end

  def genre
  	@genre = params['name']

  	if params['name'] == 'Any' || !params['name'].present?
  		redirect_to begin_path
  	else
  		@movies = Movie.all.where("genre like ?", "%@genre%")

	  	@relations = Relation.all.where user: current_user

	  	@old_movies = []
	  	@relations.each { |r| @old_movies << r.movie}

	  	@new_movies = @movies - @old_movies

	  	@first_movie = @new_movies.first

  	end

  	
  end

  
end
