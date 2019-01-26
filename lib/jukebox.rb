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
  user_input = gets.chomp
  if songs.include? (user_input) 
    puts "Playing #{user_input}"
  elsif [1, 2, 3, 4, 5, 6, 7, 8, 9].include? (user_input.to_i)
    puts "Playing #{songs[(user_input.to_i)-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list (songs)
  puts songs
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  
  if user_input == "exit"
    exit_jukebox
  end
  
  until user_input == "exit"
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      puts "Please enter a valid command."
      user_input = gets.chomp
    end
  exit_jukebox
  end
end

