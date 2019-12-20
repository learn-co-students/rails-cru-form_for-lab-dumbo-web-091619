class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.create(post_params(:genre, :name))
    redirect_to @genre
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.update(post_params(:genre, :name))
    redirect_to @genre
  end
end
