#orange tree class
# 8 methods to return
# one_year_passes method when called, ages the tree one year.
# my tree grows every years
# after some time he dies
# for the first 2 years doesn't produce fruits
#older trees produce more each year than younger trees...whatever you think makes the
#count_the_oranges (which returns the number of oranges on the tree)
#and pick_an_orange (which reduces the @orange_count by 1 and returns a string
#telling you how delicious the orange was
  #else it just tells you that there are no more oranges to pick thisyear)
# Make sure any oranges you don’t pick one year fall off before thenext year

class OrangeTree

  def initialize
    @tree_name = "nightmare tree"
    @age = 0
    @height = 0
    @oranges = 0
    @pick_an_orange = -1

    puts "Unfortunately #{@tree_name} is born."
  end

  def height
    puts "I am #{@height} cm tall"
  end

  def one_year_passes
    if @age >= 4
      @oranges = 0

      puts "Adios!"
      return
    else
      puts "I am still alive!"
    end

    @age += 1
    @height += 10

    if @age < 2
      @oranges
    else
      @oranges += 100
      @oranges = @oranges - 1
    end
    puts "I am #{@age} year old and #{@height} cm tall and i produce #{@oranges}oranges"
  end

  def pick_an_orange
    if @oranges > 0
      @oranges -= 1
      return "These oranges are delicious"
    else
      return "No more oranges to pick"
    end
  end


  def age
    puts "#{@tree_name} is #{@age} years old"
    #one_year_passes
  end

  def count_the_oranges
    return @oranges
    puts "For two years i will produce this number of oranges: #{@oranges}"
  end

  def tree_grows
    puts "One year passed and now you are #{@tree_grows} old"
  end
end


tree = OrangeTree.new
tree.age
tree.one_year_passes
tree.one_year_passes
(tree.count_the_oranges + 1).times { puts tree.pick_an_orange }
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes

puts tree.pick_an_orange
#tree.n_oranges
