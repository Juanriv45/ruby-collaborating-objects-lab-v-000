class Artist
  attr_accessor :name, :songs
  @@all = []
  

  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def add_song(song)
    @songs << song
  end
  def print
    @songs.each {|x| puts x}
  end
end
