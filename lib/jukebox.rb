def help
  puts  "I accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
          - exit : exits this program
        "
end

def list(songs)
  songs.each_with_index { |elmt, idx| puts "#{idx + 1}. #{elmt}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  requested_song = gets.chomp
  if (1..songs.length).include?(requested_song.to_i)
    puts "Playing #{songs[requested_song.to_i - 1]}"
    songs[requested_song.to_i - 1]
  elsif songs.include?(requested_song)
    puts "Playing #{requested_song}"
    requested_song
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  command = nil

  until command == "exit"
    puts "Please enter a command:"
    command = gets.chomp

    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      run(songs)
    end
  end
end
