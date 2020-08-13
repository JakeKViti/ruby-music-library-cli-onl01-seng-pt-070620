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

  ef artist=(artist)
      if @artist == nil
        @artist = artist
      else
        @artist = @artist
      end
      if self.artist != nil
        @artist.add_song(self)
      end
      @artist
    end

end
