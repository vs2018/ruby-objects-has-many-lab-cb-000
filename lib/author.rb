class Author 
  attr_accessor :name, :posts
  
  @@total = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
    @@total += 1
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end
  
  def self.post_count
    @@total
  end
end