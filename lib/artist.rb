class Artist

 attr_accessor :name, :song
 @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    end

  def add_song(song)
    @song = song
    @songs << song
    end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << @self
  end

  def self.find_or_create_by_name(name)
    self.find(name)
    
  end



end
