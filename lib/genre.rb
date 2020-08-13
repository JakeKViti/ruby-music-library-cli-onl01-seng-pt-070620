class Genre
  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def self.create(genre)
    newGenre = Genre.new(genre)
    newGenre
  end

  def songs
    @songs
  end

  def add_song(song)
    if !@songs.include?(song)
      @songs << song
      song.artist = self unless song.artist
    end
  end

end
