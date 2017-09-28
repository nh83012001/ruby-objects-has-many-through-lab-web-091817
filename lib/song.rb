require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  #@@all = []
  def initialize(name, genre)
    #@@all << self
    @name = name #"99 Problems"
    @genre = genre # #<Genre:0x007f86d8b34438 @name="rap", @songs=[]>
    genre.add_song(self) # adds myself to genres songs #going to genre class and adding instance of self  ( #<Song:0x007f86d8b343c0>)
  end



end
