class Song
  attr_reader :title, :artist, :filename, :play_count

  #@@total_plays = 0

  def initialize(title, artist, filename)
    @title = title
    @artist = artist
    @filename = filename
    @play_count = 0
  end

  def summary
    return "#{@title}, by #{@artist}"
  end

  def play
    @play_count += 1
    #@@total_plays += 1
    # ... more code that loads the song data from the file and sends it to the speakers ...
  end

  def self.definition
    return "A song is a short poem or other set of words set to music or meant to be sung."
  end

  def self.total_plays
    return @@total_plays
  end

  def self.most_played(song_list)
    most_played = song_list.max_by do |song|
      song.play_count
    end
    return most_played
  end

end