require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def count
    @@count
  end

  def artists
    @@artists
  end

  def genres
    @@genres
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    self.genres.each {|genre| genre_count[genre] = @@genres.count(genre)}
    genre_count
  end

  def self.artist_count
    artist_count = {}
    self.artists.each {|artist| artist_count[artist] = @@artists.count(artist)}
    artist_count
  end

end
