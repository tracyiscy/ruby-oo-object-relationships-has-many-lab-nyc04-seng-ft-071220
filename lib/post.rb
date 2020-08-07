class Post

    attr_accessor :title, :author

    @@all =[]

    def initialize(title)
        @title =title
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end

    def title
        @title
    end

    def author
        @author
        # self.author
    end

    def author_name
        self.author ? self.author.name : nil
    end
end