
require 'pry'
class Artist
    attr_reader :songs, :name, :genres
    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      @songs << song
      song.artist = self
    end

    def songs
      @songs
    end

    def genres
      #binding.pry
      self.songs.collect do |song|
        song.genre
      end
    end

end#/Class
