class SongsController < ApplicationController 
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.create(post_params(:song, :name, :artist_id, :genre_id))
    redirect_to @song
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.update(post_params(:song, :name, :artist_id, :genre_id))
    redirect_to @song
  end
end
