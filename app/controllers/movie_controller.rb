class MovieController < ApplicationController
  

  def index
  	@movies = Movie.all
  end

  def like
  	@movie = Movie.find(params[:movie_id])
    @movie.relations.create user: current_user, seen: true, like: true
    redirect_to begin_path
  end

  def nope
  	@movie = Movie.find(params[:movie_id])
    @movie.relations.create user: current_user, seen: true, like: true 

    redirect_to begin_path
  end

  def seen
  	@movie = Movie.find(params[:movie_id])
    @movie.relations.create user: current_user, seen: true, like: true 
    redirect_to begin_path
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end


  def update
    @movie = Movie.find(params[:id])
    @movie.update_attribute(:picture, params[:movie][:picture])
  end
  
end