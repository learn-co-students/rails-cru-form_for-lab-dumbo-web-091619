class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(post_params(:artist, :name, :bio))
    redirect_to @artist
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.update(post_params(:artist, :name,:bio))
    redirect_to @artist
  end
end
