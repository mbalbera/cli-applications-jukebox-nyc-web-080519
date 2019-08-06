# Add your code here

def run(songs)
  while true do
    puts "Please enter a command:"
    response = gets.chomp
    if response == "exit"
      exit_jukebox
      break
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    elsif response == "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if response.to_i >= 1 && response.to_i <= songs.length
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs.include?(response)
    puts "Playing #{songs.find{|song| song == response}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def help
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list(songs)
songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end