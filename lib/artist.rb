class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def genres
    all_songs = Song.all 
    my_songs = all_songs.select {|song| self == song.artist  }
    my_songs.map {|song| song.genre}
  end 
  
  def new_song(song_name, genre)

    new_song = Song.new(song_name, self, genre)
    
  end 

  def save
    self.class.all << self
  end

  def songs
    all_songs = Song.all
    my_songs = all_songs.select { |song| song.artist == self }
    my_songs
  end



end
