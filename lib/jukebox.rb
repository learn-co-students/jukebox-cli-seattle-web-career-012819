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
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index.to_i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  index = response.to_i - 1
  if songs.include?(response)
    puts "Playing #{response}"
  elsif index > -1 && index < songs.length
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  list(songs)
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit"
    if input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "list"
      list(songs)
    else
      puts "Please enter a valid command"
    end
    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_jukebox
end