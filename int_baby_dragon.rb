#command as : feed and walk
#calls those methods on my Dragon
#method dispatch that checks which string was entered and then calls the
#the appropiate method
class Dragon

  def initialize
    @asleep = false
    @stuff_in_belly = 0
    puts "What's your name little Dragon?"
    @name = $stdin.gets.chomp
  end
  # attr_accessor :name :asleep :stuff_in_belly

  def feed
    puts "You: Hello #{@name}, are you hungry?"
    user = $stdin.gets.chomp

    if user == "yes"
      puts "Ok here you are your food!"
      puts "#{@name}: Mmmmm, that is a delicious pig! Thanks!"
    elsif user == "no"
      puts "No I am ok for the moment. Let's go for a stroll"
    else
      puts "I see you can't decide now"
    end
  end

  def walk
    puts "It's time to walk"
  end

  def mood
    if @stuff_in_belly < 10
      puts "I am really hungry!"
    end
  end
end

b = Dragon.new
puts "I'm hungry!!"

while true
  print "> "
  command = $stdin.gets.chomp
  if command == "feed"
    b.feed
  elsif command == "walk"
    b.walk
  elsif command == "mood"
    b.mood
  elsif command == "quit"
    break
  else
    puts "I didn't understand that, sorry"
  end
end
