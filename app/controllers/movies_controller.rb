class MoviesController < ApplicationController
  

  def index
  	@movies = Movie.all
  end

  def like
  	
  end

  def nope
  	
  end

  def seen
  	
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