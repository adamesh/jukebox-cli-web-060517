require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  help = ["I accept the following commands:", "- help : displays this help message",
    "- list : displays a list of songs you can play", "- play : lets you choose a song to play",
    "- exit : exits this program"]
  help.each {| command | puts command }
end

def list(songs)
  songs.each {|song| puts "#{songs.index(song) + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets
  if songs.include? song
    puts "Playing #{song}"
  elsif song.to_i == 1..songs.count
    puts "Playing #{songs[song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  help

  puts "Please enter a command:"

  answer = gets.strip

  case answer

  when 'exit'
    exit_jukebox
  when 'list'
    list
  when 'play'
    play
  when 'help'
    help
end







end
