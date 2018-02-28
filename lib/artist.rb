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
    if self.all.find.nil? {|artist| artist.name == artist_new} then
      artist = Artist.new(artist_new)
      artist.save
    else
      self.all.find {|artist| artist.name == artist_new}
    end
  end
end
