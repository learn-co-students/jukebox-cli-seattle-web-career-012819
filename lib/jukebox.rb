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
#the help command method
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

#list method
def list(title)
  title.each_with_index { |song, index|
    puts (index + 1).to_s + ". " + song
    }
end

#the play method
def play(title)
  puts "Please enter a song name or number:"
  input = gets.chomp
  valid = false
  title.each_with_index do |song, index|
    if (input.to_i - 1 == index)
      puts "Playing #{title[index]}"
      valid = true
    elsif (input == song)
      puts "Playing #{input}"
      valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end
#exit method
def exit_jukebox
  puts "Goodbye"
end

#play method, type exit to stop the program
def run(title)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when 'play'
      play(title)
    when 'help'
      help
    when 'list'
      list(title)
    when 'exit'
      break
    end
  end
  exit_jukebox
end
