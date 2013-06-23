class Song
  attr_accessor :name, :artist
  attr_reader :genre

  SONGS = []

  def initialize
    SONGS << self
  end

  def self.reset_songs
    SONGS.clear
  end

  def self.all
    SONGS
  end

  def genre=(genre)
    @genre = genre
    genre.song << self
  end

end