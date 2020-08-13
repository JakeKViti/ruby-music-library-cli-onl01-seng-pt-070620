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
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    #if songs == nil
    @songs << song
    song.artist = self
#  end
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end

  def self.song_count
    count = 0
    Song.all.select {|song| count+=1}
    return count
  end


end
