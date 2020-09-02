#main.rb
require_relative 'jukebox'
require_relative 'song'

def make_jukebox
  ada_jukebox = Jukebox.new

  ada_jukebox.add_song(Song.new("Respect", "Aretha Franklin", "songs/respect.mp3"))
  ada_jukebox.add_song(Song.new("What a Little Moonlight Can Do", "Billie Holiday", "songs/moonlight.mp3"))
  ada_jukebox.add_song(Song.new("Adore", "Savages", "songs/adore.mp3"))

  return ada_jukebox
end

def main
  ada_jukebox = make_jukebox

  s1 = ada_jukebox.songs[0]
  s2 = ada_jukebox.songs[1]
  s3 = ada_jukebox.songs[2]

  3.times do
    ada_jukebox.play(s1)
  end

  5.times do
    ada_jukebox.play(s2)
  end

  2.times do
    ada_jukebox.play(s3)
  end

  puts ada_jukebox.total_plays
  puts ada_jukebox.calculate_most_played.title
end

main