class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def directors
    render({ :template => "misc_templates/directors"})
  end

  def director
    @director = Director.find(params[:id])
    @movies = @director.movies
    render({ :template => "misc_templates/director"})
  end

  def youngest
    @director = Director.where.not(dob:nil).order(dob: :desc).first
    render({ :template => "misc_templates/youngest"})
  end

  def oldest
    @director = Director.where.not(dob:nil).order(dob: :asc).first
    render({ :template => "misc_templates/oldest"})
  end

  def movies
    @movies = Movie.all
    render({ :template => "misc_templates/movies"})
  end

  def movie
    @movie = Movie.find(params[:id])
    render({ :template => "misc_templates/movie"})
  end

  def actors
    @actors = Actor.all
    render({ :template => "misc_templates/actors"})
  end

  def actor
    @actor = Actor.find(params[:id])
    @movies = @actor.movies.includes(:characters)
    render({ :template => "misc_templates/actor"})
  end

end
