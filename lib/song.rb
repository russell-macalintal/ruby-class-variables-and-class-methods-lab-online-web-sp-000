class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
  end

  def self.count #Class method
    @@count
  end

  def self.genres #Class method
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    end
    unique_genres
  end

end
