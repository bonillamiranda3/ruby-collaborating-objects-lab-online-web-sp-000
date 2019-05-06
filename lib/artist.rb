class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_songs(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if find(name) == nil
      then create(name)
    else find(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
  end
end
end
