class Post
  
  attr_accessor :title, :author
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
end