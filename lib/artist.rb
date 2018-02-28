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
    if self.find(name) == nil then
      self.new(name).save
    else
      self.find(name)
    end
  end
  def self.find(artist)
    @@all.find {|artist| artist.name == artist}
  end
end
