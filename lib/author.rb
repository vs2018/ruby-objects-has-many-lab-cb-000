class Author 
  attr_accessor :name, :posts
  
  @@total = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(song)
    post.artist = self
    @songs << song
    @@total += 1
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
    @@total
  end
end