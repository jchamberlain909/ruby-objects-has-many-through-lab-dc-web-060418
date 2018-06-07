class Artist
    @@all =[]
    attr_accessor :name, :songs
    def initialize (name)
        @name = name 
        @songs = []
        self.class.all << self
    end

    def new_song (name, genre)
        song =Song.new(name, self, genre)
        self.songs << song
        song
    end

    def genres
        genres = []
        self.songs.each do |song|
            if(!genres.include? song.genre)
                genres << song.genre
            end 
        end 
        genres
    end

    def self.all
        @@all
    end 
end 