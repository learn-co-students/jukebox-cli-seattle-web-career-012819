require "pry"

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end

def list (array)
  index = 0
  array.each do |element|
    puts "#{index}. #{element}"
  end
end

def play (array)
  puts "Please enter a song name or number:"
  selection = gets.chomp

  #binding.pry

  if selection.to_i > 0
    if selection.to_i < array.length
      binding.pry
      puts "Playing #{array[selection.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  else
    if array.include?(selection) == true
      puts "Playing #{selection}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(test)
  help

  selection = ""

  while selection != "exit"
    puts "Please enter a command:"
    selection = gets.chomp

    if selection == "help"
      help
    elsif selection == "list"
      list(songs)
    elsif selection == "play"
      play(songs)
    else
      puts "Invalid command"
    end
  end

  exit_jukebox
end
