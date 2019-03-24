class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  
  def initialize(song_name, artist_name, genre)
    @name = song_name
    @artist = artist_name
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist_name
    if @@genre_count.has_key?(genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
    
    if @@artist_count.has_key?(artist_name)
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists = @@artists.uniq
  end
  
  def self.genre_count
    @@genre_count
  end
end