class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist)
    @name = name
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
