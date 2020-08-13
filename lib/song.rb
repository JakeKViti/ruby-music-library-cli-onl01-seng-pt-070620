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

  def artist=(artist)
      if self.artist == nil
        @artist = artist
      else
        @artist = @artist
      end
      if self.artist != nil
        @artist.add_song(self)
      end
      @artist
    end

  def genre=(genre)
      if self.genre == nil
        @genre = genre
      else
        @genre = @genre
      end
      if self.genre != nil
        @genre.add_song(self)
      end
      @genre
    end


    def self.find_or_create_by_name(name)
  if self.find_by_name(name)
     self.find_by_name(name)
  self.create(name)
end
end

def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end



end
