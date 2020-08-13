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

end
