
class Artist

  attr_accessor :name, :song, :songs, :artist

  @@songs = []

  def initialize(name)
    @name = name
    @song = song
    @artist = artist
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def songs
    @@songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
   @@songs << song
   song.artist = self
 end

 def self.song_count
   Song.all.length
 end

end
