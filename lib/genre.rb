<<<<<<< HEAD
class Genre 
   attr_accessor :name, :songs
  @@all = []
  
  def initialize
    save
  end
  
  def self.all 
    @@all
  end
  
   def save 
    @@all << self 
  end 
  
  def self.reset_all 
    @@all.clear
  end 
  
=======
class Genre
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    genre = self.new(name)
    genre.save
    genre
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect {|s| s.artist}.uniq
  end
>>>>>>> 844a2786351977ba519d986d310b28f243ad60ef
end