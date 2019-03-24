class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize(song_name, artist_name, genre)
    @name = song_name
    @artist = artist_name
    @genre = genre
    @@count += 1 
    
    if @@genres.include?(genre) == false
      @@genres << genre
    end
    
    if @@artists.include?(artist_name) == false
      @@artists << artist_name
    end
  end
  
  def self.count
    @@count
  end
  
  def self.geners
    @@geners
  end
  
  def self.artists
    @@artists
  end
end