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

def play (songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

  if choice.to_i > 0 && choice.to_i <= songs.size
    puts "Playing #{songs[choice.to_i - 1]}"
  elsif choice.to_i == 0 && songs.include?(choice)
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  while true
    puts "Please enter a command:"
    choice = gets.chomp
    case choice
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
end
