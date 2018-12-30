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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index +1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  #binding.pry
  if selection.to_i > 0 && selection.to_i <= songs.length
    puts "Playing #{songs[selection.to_i - 1]}"
  elsif selection.to_i == 0 && songs.include?(selection)
    puts "Playing #{selection}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  while true
    puts "Please enter a command:"
    selection = gets.chomp
    case selection
      when "exit"
        exit_jukebox
        break
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      else
        puts "Invalid input, please try again"
    end
  end
end

#play(songs)
