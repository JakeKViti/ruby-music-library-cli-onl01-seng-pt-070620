class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist
    self.genre = genre
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


  def artist_name=(name)
      artist = Artist.find_or_create_by_name(name)
      self.artist = artist
      artist.add_song(self)
    end

end
