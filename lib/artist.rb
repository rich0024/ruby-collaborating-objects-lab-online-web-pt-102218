class Artist

 attr_accessor :name, :song
 @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|example| example.name == name}
  end

  def self.create_by_name(name)
    create_artist_by_name = Artist.new(name)
    @@all << self
    create_artist_by_name
  end

  def self.find_or_create_by_name(name)
     self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each {|song| song.name}
  end


end
