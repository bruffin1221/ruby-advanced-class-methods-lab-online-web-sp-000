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
    song=Song.new
    @@all<<song
    song
  end

  def self.new_by_name
    song=Song.new
    song.name=song.split
    song=artist
  end


  def self.create_by_name(name)
    song=self.new
    song.name=name
    @@all<<song
    song
  end

  def self.find_by_name(name)
    @@all.find {|song| song.name==name}
  end

  def self.find_or_create_by_name(name)
    song=self.new
    song=self.create_by_name(name)
    song_1=self.find_by_name(name)
    if song=song_1
      song
    else
      nil
    end
  end

  def self.alphabetical
    @@all.sort_by do |x|
      x.name
    end
  end

end

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
    song=Song.new
    @@all<<song
    song
  end

  def self.new_by_name(name)
    song=Song.new
    song.name=name
    song
  end


  def self.create_by_name(name)
    song=self.new
    song.name=name
    @@all<<song
    song
  end

  def self.find_by_name(name)
    @@all.find {|song| song.name==name}
  end

  def self.find_or_create_by_name(name)
    song=self.new
    song=self.create_by_name(name)
    song_1=self.find_by_name(name)
    if song=song_1
      song
    else
      nil
    end
  end

  def self.alphabetical
    @@all.sort_by do |x|
      x.name
    end
  end

  def self.new_from_filename(artist_name, name)
    song=self.new
    song="#{artist_name}-#{name}.mp3"
    song
    song.split=song.name
  end


end

s = Song.new
s.name = "The Ship Song"
s.artist_name = "Nick Cave"
s.save

s=Song.find_by_name("June")
s

s=Song.create_by_name("Brown")
s

s=Song.new_from_filename("Michael Jackson","Thriller")


song.artist_name
