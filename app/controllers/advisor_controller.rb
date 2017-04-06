class AdvisorController < ApplicationController
  

  def index

  end

  def begin
  	@movies = Movie.all.order(score: :desc)
    @movies = @movies.first(20)
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
  		@movies = Movie.all.where("genre like ?", "%"+ @genre +"%").order(score: :desc) if @genre.present?
      @movies = @movies.first(20)
	  	#@relations = Relation.all.where user: current_user

	  	#@old_movies = []
	  	#@relations.each { |r| @old_movies << r.movie}

	  	#@new_movies = @movies - @old_movies

	  	#@first_movie = @new_movies.first
	  	@first_movie = @movies.first


  	end

  	
  end

  
end
