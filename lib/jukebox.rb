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
  puts "I accept the following commands"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you chooose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|val, index | puts "#{index + 1}. #{val}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  songs.each_with_index do |song, num|
    if user_response.to_i == (num + 1) || user_response.include?(song)
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break 
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def return
  help 
  user_response = ""
  while user_response != "exit"
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response = "list"
      list(songs)
    elsif user_response = "play"
      play(songs)
    elsif user_response = "help"
      help 
    elsif user_response = "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
end