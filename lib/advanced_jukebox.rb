#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
"Go Go GO" => '/home/bionic-lab-9251/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/bionic-lab-9251/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/bionic-lab-9251/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/bionic-lab-9251/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/bionic-lab-9251/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/05.mp3',
"Blue" => '/home/bionic-lab-9251/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/bionic-lab-9251/jukebox-cli-seattle-web-career-012819/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each {|song| puts song}
end


def play(my_songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if my_songs.include?(choice)
    system "open #{my_songs[choice]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  while true
    puts "Please enter a command:"
    choice = gets.chomp
    case choice
      when "exit"
        exit_jukebox
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      else
        puts "Invalid input, please try again"
    end
  end
end
