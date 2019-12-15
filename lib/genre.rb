class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def songs
    all_songs = Song.all
    my_songs = all_songs.select { |song| song.genre == self }
    my_songs
  end

  def artists
    all_artists = Song.all
    my_songs = all_artists.select { |song| self == song.genre }
    my_songs.map { |song| song.artist }
  end

  def save
    self.class.all << self
  end
end
