class Song
  attr_accessor :name, :artist_name
  @@all = []

def save
  self.class.all << self
end

  def self.create
     song = self.new
     self.all << song
     song
   end

   def self.new_by_name(name) #class constructor
     song = self.new
     song.name = name
     song
   end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
