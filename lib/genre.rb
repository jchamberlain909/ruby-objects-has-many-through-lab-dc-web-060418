require 'pry'
class Genre
    @@all =[]
    attr_accessor :name, :songs 
    def initialize (name)
        @name = name
        self.class.all << self
        @songs = []
    end
    def new_song (name, artist)
        song = Song.new(name, artist, self)
        self.songs << song 
        song 
    end 

    def songs 
        Song.all.keep_if{|song| song.genre == self}
    end     

    def artists
        self.songs.collect do |song|
            song.artist
        end 
    end 


    def self.all 
        @@all
    end
end 