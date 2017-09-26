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

  def self.genre_count
    genre_histogram = {}
    @@genres.each do |x|
      if genre_histogram[x] == nil
        genre_histogram[x] = 1
      else
        genre_histogram[x] += 1
      end
    end
    genre_histogram
  end
  

end
