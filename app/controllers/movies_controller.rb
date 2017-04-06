class MoviesController < ApplicationController
  

  def index

  	@movies = Movie.all
  end

  #relation related 

  def like
  	@movie = Movie.find(params[:movie_id])
    @movie.relations.create user: current_user, seen: false, like: true
  end

  def nope
  	@movie = Movie.find(params[:movie_id])
    @movie.relations.create user: current_user, seen: false, like: false 
  end

  def seen_like
    @movie = Movie.find(params[:movie_id])
    @movie.relations.create user: current_user, seen: true, like: true  
  end


  def seen_nope
  	@movie = Movie.find(params[:movie_id])
    @movie.relations.create user: current_user, seen: true, like: false  
  end

  #specific to movies
  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attribute(:picture, params[:movie][:picture])

    redirect_to movie_path(@movie)
  end
  
end