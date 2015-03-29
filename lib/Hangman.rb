require 'yaml'

class Hangman

  def initialize(name)
    content = File.open("5desk.txt", 'r') { |file| file.read }  #import the source file
    valid_words = content.split.select { |word| word.length.between?(5,12) }

    @word = valid_words[rand(valid_words.size)].upcase.split('')  #pick a random word
    @current_word = Array.new(@word.size, '_')
    @missed = []
    @turn = 10 
    @name = name
  end

  def play
  	#print @word.join  #uncomment this line to enable cheat mode ;)
  	while @turn > 0
      display_game
      take_guess
      if @current_word.none? { |blank| blank == '_' }  #game win if there's no blank left
        puts "#{display_game}\nYOU WIN!!!!"
        puts "\n"
      	@turn = -1
      	break
      end
    end
    if @turn != -1  #don't display this message if player win
      puts "The word is: " + @word.join.upcase
  	  puts "You suck! Go get good."
  	  puts "\n"
  	end
  end

  private

  def display_game
  	puts "\n"
  	puts "Word: " + @current_word.join(' ')
  	puts "Misses: " + @missed.join(' ')
  	puts "Turns left: " + @turn.to_s
  end

  def take_guess
    print "Guess: "
  	input = gets.chomp.upcase
  	if @word.none? { |letter| letter == input }
  	  if input == "SAVE"
  	    save_game
  	    puts "Game saved! \n"
  	  elsif input == "QUIT"
  	  	puts "Good bye! \n"
  		exit
  	  else
  	    @missed << input unless @missed.include?(input) #don't insert the letter if it's already existed
  	    @turn -= 1
  	  end
  	else
  	  @word.each_with_index do |letter, index|
  		@current_word[index] = letter if input == letter
  	  end
  	end
  end

  def save_game
  	Dir.mkdir("saved_games") unless Dir.exists?("saved_games")  #create a new directory if "saved_game" does not exist
  	
  	filename = "saved_games/#{@name}.yaml"

  	File.open(filename, 'w') do |file|
  		file.puts YAML::dump(self)
  	end
  end

end

def load_game(name)
    game_data = File.open("saved_games/#{name}.yaml", 'r') { |file| file.read }
    YAML::load(game_data)
end

#EXECUTION:
begin
  puts "-----------------------------------------------"
  puts "WELCOME TO HANGMAN"
  puts "You can save the game anytime by typing 'save'."
  puts "You can quit the game anytime by typing 'quit'."
  puts "-----------------------------------------------"

  print "Please enter your name: "
  name = gets.chomp.downcase
  print "Do you want to load your previous game #{name.capitalize} (y/n)?: "
  choice = gets.chomp.downcase

  if choice == 'y'
    if File.exist?("saved_games/#{name}.yaml")
      game = load_game(name)
    else
  	  puts "Sorry, file does not exist. Create new game."
  	  game = Hangman.new(name)
    end
  else
    game = Hangman.new(name)
  end
  game.play

  print "Replay (y/n)?: "
  input = gets.chomp.downcase
end while input == 'y'

