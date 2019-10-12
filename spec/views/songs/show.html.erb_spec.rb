require 'rails_helper'

RSpec.describe "songs/show", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!())
    @genre = assign(:genre, Genre.create!())
    @artist = assign(:artist, Artist.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
