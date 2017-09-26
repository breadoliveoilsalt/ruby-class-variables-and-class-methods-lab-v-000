class Song

  @@count = 0
  @@genres = [ ]
  @@artists = [ ]

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    genres_without_duplicates = @@genres.uniq
    genres_without_duplicates
  end

  def self.artists
    artists_without_duplicates = @@artists.uniq
    artists_without_duplicates
  end

end
