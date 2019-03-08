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

  def self.find_or_create_by_name(name)
    result = self.find_by_name(name)
    if result
      result
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

def self.new_from_filename(filename)
  song_array = filename.split(" - ")
    song_array[1] = song_array[1].chomp(".mp3")
    song = self.new
    song.name = song_array[1]
    song.artist_name = song_array[0]
    song
end

def self.create_from_filename(filename)
  result = self.new_from_filename(filename)
    song = self.create
    song.name = result.name
    song.artist_name = result.artist_name
    song
end

def self.destroy_all
  self.all.clear
end

def self.all
    @@all
  end

end
