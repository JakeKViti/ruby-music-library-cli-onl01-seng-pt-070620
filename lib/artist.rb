class Artist
  attr_accessor :name, :song, :genre

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

  def self.create(artist)
    newArtist = Artist.new(artist)
    newArtist
  end

  def songs
    artistSongs = Song.all.select {|song| song.artist == self}
    @songs << artistSongs
  end

end
