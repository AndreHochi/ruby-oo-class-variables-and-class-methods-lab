class Song
    
    @@count = 0
    @@genres = []
    @@artists = []


    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end


    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_re = {}
        @@genres.uniq.each do |genre|
            genre_count_re[genre] = @@genres.count(genre)
        end
        genre_count_re
    end

    def self.artist_count
        artist_count_re = {}
        @@artists.uniq.each do |artist|
            artist_count_re[artist] = @@artists.count(artist)
        end
        artist_count_re
    end
end
