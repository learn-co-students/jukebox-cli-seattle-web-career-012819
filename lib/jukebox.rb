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

def help()
  puts "- help: displays this help setting"
  puts "- list: displays a list of songs you can play" 
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def play(songs)
  choice = gets.chomp
  if songs.include? choice
    puts songs
  else 
    is_int = Integer(choice) rescue nil
    if (is_int != nil)
      if (is_int > 0) && (is_int < (songs.length + 1))
        puts songs[is_int -1]
      else
        puts "Invalid input, please try again"
      end  
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  i = 0
  while i < songs.length do
    puts "#{i + 1}. #{songs[i]}"
    i += 1
  end
  
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  keep_going = true
  while keep_going == true
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input.downcase == "help"
      help()
    elsif user_input.downcase == "list"
      list(songs)
    elsif user_input.downcase == "play"
      play(songs)
    elsif user_input.downcase == "exit"
      exit_jukebox()
      keep_going = false
    else 
      puts "Invalid input, Please try again"
    end
  end
end

#run(songs)