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

def list(song_list)
	song_list.each_with_index do |track_name, track_index|
		puts "#{track_index+1}. #{track_name}"
	end
end

def play(song_list)
	puts "Please enter a song name or number:"
	user_input = gets.chomp
	input_valid = false
	song_index_to_play = nil
	song_list.each_with_index do |track_name, track_index|
		if user_input.length < 3
			if user_input.to_i - 1 == track_index
				input_valid = true
				song_index_to_play = track_index
			end
		else
			if track_name.include?(user_input)
				input_valid = true
				song_index_to_play = track_index
			end
		end
	end
	if input_valid
		puts "Playing #{song_list[song_index_to_play]}"
	else
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(song_list)
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
					list(song_list)
				when "play"
					play(song_list)
				else
					puts "Invalid input, please try again"
			end
		end
	end
	exit_jukebox
end