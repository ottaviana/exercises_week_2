class Dragon

  def initialize
    puts "What's your name little Dragon?"
    @name = $stdin.gets.chomp
    puts "Hello #{@name}, What do you like to do?"
  end

  def feed
    puts "You feed #{@name}"
  end

  def toss
    puts "You toss #{@name}"
  end

  def walk
    puts "You walk #{@name}."
  end

  def rock
    puts "#{@rock} rocks!!"
  end

  def put_to_bed
    puts "Goodnight!!"
  end
end

pet = Dragon.new

while true
  # puts
  puts "Hello #{@name} commands: feed, toss, walk, rock, put to bed, exit"
  print "> "
  command = $stdin.gets.chomp
  if command == "exit"
      exit
  elsif command == "feed"
    pet.feed
  elsif command == "toss"
    pet.toss
  elsif command == "walk"
    pet.walk
  elsif command == "rock"
    pet.rock
  elsif command == "put to bed"
    pet.put_to_bed
  else
  puts "Huh? Pleae type one of the commands."
  end
end
