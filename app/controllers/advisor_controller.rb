class AdvisorController < ApplicationController
  

  def index
  	
  end

  def begin
  	@movies = Movie.all
  end

  
end
