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

end
