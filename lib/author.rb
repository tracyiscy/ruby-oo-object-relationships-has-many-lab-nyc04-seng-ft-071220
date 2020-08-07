require 'pry'
class Author
    
    attr_accessor :name, :post

    def initialize(name)
        @name = name        
    end

    def posts
        Post.all
        # binding.pry
    end

    def add_post(title)
        title.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end

end