<<<<<<< HEAD
class Artist 
   attr_accessor :name, :songs
  @@all = []
  
  def initialize
    save
  end
  
  def self.all 
    @@all
  end
  
  def self.save 
    @@all << self 
  end 
  
  def self.reset_all 
   @@all.clear
  end
  
  def self.count 
    @@all.size
  end 
  
  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end
end 
=======
class Artist
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # self.save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def songs
    @songs
  end

  def add_song(song)

      song.artist = self unless song.artist
      songs << song unless songs.include?(song)
      # @songs.uniq!

  end

  def genres
    # self.songs.collect {|song| song.genre}
    songs.collect { |song| song.genre}.uniq
  end
end
>>>>>>> 844a2786351977ba519d986d310b28f243ad60ef
