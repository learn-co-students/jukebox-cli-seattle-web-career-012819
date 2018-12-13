#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => '/Users/allen-woods/Development/Flatiron/labs/prework/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/allen-woods/Development/Flatiron/labs/prework/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/allen-woods/Development/Flatiron/labs/prework/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/allen-woods/Development/Flatiron/labs/prework/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/allen-woods/Development/Flatiron/labs/prework/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/allen-woods/Development/Flatiron/labs/prework/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/allen-woods/Development/Flatiron/labs/prework/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/07.mp3'
}

def help
  command_list = {
    "help" => "displays this help message",
    "list" => "displays a list of songs you can play",
    "play" => "lets you choose a song to play",
    "exit" => "exits this program"
  }
  puts "I accept the following commands:"
  command_list.each do |cmd, desc|
    puts "- #{cmd} : #{desc}"
  end
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  song_index = 1
  my_songs.each do |name_key, path_val|
    puts "#{song_index}. #{name_key}"
    song_index += 1
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  user_input = gets.chomp
  input_valid = false
  song_path_to_play = nil
  my_songs.each do |name_key, path_val|
    if user_input == name_key
      song_path_to_play = path_val
      input_valid = true
    end
  end
  if input_valid
    puts "Playing #{user_input}"
    system "open #{song_path_to_play}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  user_input = nil
  help
  until user_input == "exit"
    if user_input != "exit"
      puts "Please enter a command:"
      user_input = gets.chomp.downcase
      case user_input
        when "help"
          help
        when "list"
          list(my_songs)
        when "play"
          play(my_songs)
        when "exit"
          # Nothing
        else
          puts "Invalid input, please try again"
      end
    end
  end
  exit_jukebox
end
