class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  
  
  def initialize(song_name, artist_name, genre)
    @name = song_name
    @artist = artist_name
    @genre = genre
    @@count += 1 
  end
  
  def self.count
    @@count
  end
end