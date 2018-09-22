class Song
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    @@artists.each {|artist| unique_artists << artist if !unique_artists.include?(artist)}
    unique_artists
  end
  
  def self.genres
    unique_genres = []
    @@genre.each {|genre| unique_genres << genre if !unique_genres.include?(genre)}
    unique_genres
  end
  
  def self.genre_count
    
  end
  
  def self.artist_count
    
  end
end