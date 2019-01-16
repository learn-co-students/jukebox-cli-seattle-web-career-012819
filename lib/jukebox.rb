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
  puts "- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp 
  songs.each do |song|
    if user_response.to_i === 1..9 
      puts "Playing #{songs[user_response.to_i - 1]}"
    elsif song == user_response
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again."
    end 
  end 
end 

def list(songs)
  songs.each do |song|
    puts "#{songs.index(song) + 1}. #{song}"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help 
  puts "Please enter a command:"
  user_response = ""
  while user_response != "exit"
    user_response = gets.chomp
    break if user_response == "exit"
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "help"
      help
    end
  end
  exit_jukebox
end 