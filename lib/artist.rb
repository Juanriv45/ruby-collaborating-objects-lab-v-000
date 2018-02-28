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
  def find_or_create_by_name(artist_new)
    if @@all.include?(artist_new) then
      @@all.artist
    else
      artist = Artist.new(artist_new)
    end
  end
end
