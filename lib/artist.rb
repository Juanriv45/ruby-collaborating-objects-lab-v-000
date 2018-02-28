class Artist
  attr_accessor :name, :songs
  @@all = []
  @songs = []

  def initialize(name)
    @name = name
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
  def self.find_or_create_by_name(name)
    if !self.find(name) then
      artist = Artist.new(artist_new).save
    else
      self.find(name)
    end
  end
  def self.find(artist)
    @@all.find {|artist| artist.name == artist_new}
  end
end
