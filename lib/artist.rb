require 'pry'

class Artist
  attr_accessor :song, :genre
  attr_reader :name

#being passed a basic name like "taylor swift"
  def initialize(name)
    @name = name
    @songs = []
  end

#returns song instance where artist and genre instances
  def songs
    @songs
  end

#itterate through song instances that have an artist instance and genre instance attached to it
  def genres
    @songs.collect do |song| # @songs = [#<Song:0x007fdd6216dbd0 @artist=#<Artist:0x007fdd6216dce8 @name="Jay-Z", @songs=[...]>, @genre=#<Genre:0x007fdd6216dc48 @name="rap", @songs=[#<Song:0x007fdd6216dbd0 ...>]>, @name="99 Problems">]
      song.genre # song.genre = <Genre:0x007fd81a1b6558 @name="rap", @songs=[#<Song:0x007fd81a1b6490 @artist=#<Artist:0x007fd81a1b6620 @name="Jay-Z", @songs=[#<Song:0x007fd81a1b6490 ...>]>, @genre=#<Genre:0x007fd81a1b6558 ...>, @name="99 Problems">]>
    end
  end

#1 add artist instance to song instances artist method
#2 add song instance to my songs array
  def add_song(song)# song = <Song:0x007fca378a29c0 @genre=#<Genre:0x007fca378a2b00 @name="rap", @songs=[#<Song:0x007fca378a29c0 ...>]>, @name="99 Problems">
    song.artist = self # adds myself to songs artist # self = <Artist:0x007fca378a2c18 @name="Jay-Z", @songs=[]>
    @songs << song
  end

end
