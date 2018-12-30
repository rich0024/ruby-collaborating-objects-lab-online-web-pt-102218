class Artist

 attr_accessor :name, :song
 @@songs = []
 @@all = []

  def initialize(name)
    @name = name
    @@all << self
    end

  def add_song(song)
    @song = song
    @@songs << song
    end

  def songs
    @@songs
  end

  def self.all
    @@all
  end

  def save
    @@all << @self
  end

  def self.find_or_create_by_name(name)

  end


end
