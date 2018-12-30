class Artist

 attr_accessor :name, :songs
 @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find {|example| example.name == name}
  end

  def self.create(name)
    create = Artist.new(name)
    @@all << self
    create
  end

  def self.find_or_create_by_name(name)
     self.find(name) || self.create(name)
  end

  def print_songs
      puts "#{@songs.join("\n")}\n"
  end

end
