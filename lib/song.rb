class Song
  attr_accessor :name, :artist_name
  @@all = []

def save
  self.class.all << self
end

  def self.create #working
     song = self.new
     self.all << song
     song
   end

   def self.new_by_name(name) #class constructor working
     song = self.new
     song.name = name
     song
   end

  def self.create_by_name(name) #working
    song = self.create #allows for a class instance to be created
    song.name = name #assigns the reader/writer 
    song #returns the new song
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
