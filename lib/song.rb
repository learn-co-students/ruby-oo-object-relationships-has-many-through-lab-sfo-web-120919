class Song
  attr_reader :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
