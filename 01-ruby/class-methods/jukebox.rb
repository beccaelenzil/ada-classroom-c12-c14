# Review the jukebox class below.
# - How does it keep track of total plays?
# - How does it determine the most played song?
# Create jukebox.rb and main.rb files. Copy and paste the code. 
# - What do you expect runing main.rb to produce?
# - Run `ruby main.rb` in the terminal. 

class Jukebox
  attr_reader :songs, :total_plays

  def initialize
    @total_plays = 0
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def play(specific_song)
    specific_song.play
    @total_plays += 1
  end

  def calculate_most_played
    most_played = @songs.max_by do |song|
      song.play_count
    end
    return most_played
  end

end