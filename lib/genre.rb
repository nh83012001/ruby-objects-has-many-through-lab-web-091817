require 'pry'
class Genre
  attr_accessor :song
  attr_reader :name

  def initialize(name)
    @name = name #"rap"
    @songs = []
  end

#adding instance of song to my own array
  def add_song(song) #song =  #<Song:0x007fc75eb94420 @genre=#<Genre:0x007fc75eb94498 @name="rap", @songs=[]>, @name="99 Problems">

    self.songs << song
  end

  def songs
    @songs
  end

#itterating through song instances that are in my genre's array and putting in their instance of artist
  def artists
    @songs.collect do |song| #<Song:0x007f874c4eeed8  @artist=#<Artist:0x007f874c4ef0b8 @name="Jay-Z", @songs=[#<Song:0x007f874c4eeed8 ...>]>, @genre=#<Genre:0x007f874c4ef018 @name="rap", @songs=[#<Song:0x007f874c4eeed8 ...>]>, @name="99 Problems">
      song.artist ##<Artist:0x007f874c4ef0b8 @name="Jay-Z", @songs=[#<Song:0x007f874c4eeed8 @artist=#<Artist:0x007f874c4ef0b8 ...>, @genre=#<Genre:0x007f874c4ef018 @name="rap", @songs=[#<Song:0x007f874c4eeed8 ...>]>, @name="99 Problems">]>
    end
  end

end
