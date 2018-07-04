class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist_name
    if artist.class == Artist
      return artist.name
    else
      return nil
    end
      
  end
  
end