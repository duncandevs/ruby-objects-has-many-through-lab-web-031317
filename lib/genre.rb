class Genre
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end
# Song
#   #new
#     initializes with a name and a genre (FAILED - 4)
#   #genre
#     belongs to a genre (FAILED - 5)
#   #artist
#     belongs to a artist (FAILED - 6)
#
# Genre
#   #new
#     initializes with a name and an empty collection of songs (FAILED - 7)
#   #name
#     has a name (FAILED - 8)
#   #songs
#     has many songs (FAILED - 9)
#   #artists
#     has many artists, through songs (FAILED - 10)
