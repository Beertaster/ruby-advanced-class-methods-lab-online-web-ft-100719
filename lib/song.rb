class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    self.all << song
    song
  end
  
  def self.new_by_name(song_name)
    song = self.new 
    song.name = song_name
    song
  end
  
  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end
  
  def self.find_by_name(song_name) 
    result = self.all.detect {|song| song.name == song_name}
    result
  end
  
  def self.find_or_create_by_name(song_name)
    search = self.find_by_name(song_name)
    if search #=== true 
      search
    else
      self.create_by_name(song_name)
    end
  end
  
  def alphabetical
    arr_sort = self.all.sort_by {|song| song.name}
    arr_sort
  end
  
  def self.new_from_filename(file)
    arr = filename.split(" - ")
    arr[1] = arr[1].chomp(".mp3")
    
    
  end
  
    

end
