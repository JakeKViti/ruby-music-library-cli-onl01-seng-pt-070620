class Song
  attr_accessor :name, :artist, :artistName, :genre

  @@all = []

  def initialize(name, artistName)
    @name = name
    @artistName = artistName
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

  def self.create(song)
    Song.new(song)
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end
end
