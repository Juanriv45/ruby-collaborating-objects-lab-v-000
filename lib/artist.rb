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
  def self.find_or_create_by_name(artist_new)
    self.all.find |artist| then
      artist.name == artist_new
    end
  end
end
