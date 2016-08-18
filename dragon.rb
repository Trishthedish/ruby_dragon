class Dragon


# ------------- Initialized Method -------------#
  def initialize(name, color)
# We need to figure out how much these values start at. Thus, we first create
    @food_in_belly = 100
    @food_in_intestine = 0
    @awake = true
    @name = name
    @color = color
    puts "#{name} has been born!"
    if @color == "gold"
      @gold = 0
    end
  end


# ------------- feed Method -------------#
  # amount = 10 making it default.
  def feed(amount = 10)
    #plus equals because you're eating.
    @food_in_belly += amount
    if @food_in_belly > 100
      puts "#{@name} is overstuffed and makes a mess"
      @food_in_belly = 100
    else
      puts "#{@name} eats happily for #{amount}, he now has #{@food_in_intestine} in his intestine."
    end
    time_passed
  end
# ------------- walk Method -------------#
  def walk
    if @awake != true
      puts "You wake #{@name}"
      @awake = true
    end
      if @food_in_intestine > 50
        if @color == "gold"
           @gold += @food_in_intestine
           @poop = @food_in_intestine
           puts "#{@name} just pooped #{@poop} gold nuggets!! Surprise"
        end
          @food_in_intestine = 0
          puts "#{@name} makes use of the facilities"
        else
          puts "#{@name} sniffs around but doesn't do business"
        end
    time_passed
      end
  end

# ------------- nap Method -------------#
  def nap
    @awake = false
    puts "#{@name} takes a nap!! "
    time_passed
  end

  # ------------- play Method -------------#
  def play
    wake
    puts "You play toss with #{@name}."
    puts "#{@name} purrs singing you eyebrows"
    time_passed
  end

  # ------------- wake Method -------------#
  def wake
    if @awake
      return
    else
      @awake = true
      puts "You gently swake #{@name}"
    end
  end

  # ------------- specialty Method -------------#
  def specialty
    wake
    case @color
    when "red"
      puts "#{@name} in love and breathing fire"
    when "blue"
      puts "#{@name} is sad and breathing water"
    when "green"
      puts "#{@name} is envious and mowing the lawn"
    when "purple"
      puts "#{@name} in royal and puts on a crown"
    when "gold"
      puts "#{@name} has excreeted #{@gold} gold nuggets so far..."
     end
    end
  end

# ------------- time_passed Method -------------#
  private
  def time_passed
    @food_in_belly -= 10
    @food_in_intestine += 10

    if @food_in_belly < 30
      puts "#{@name} is HUNGRY!! Rawr!"
    end

    if @food_in_intestine > 80
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes"
      else
        puts "#{@name} is doing potty dance!!"
      end
    end

    if @food_in_belly <= 30
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakens!"
      end
      puts "#{@name} is STARVING and he EATS YOU!!!!!"
      exit
    end

    if @awake != true
      puts "#{@name} snores loudly!!!"
    end
  end
end




#here how you test your Dragon, when all you have is one initialized method.
my_dragon = Dragon.new("Princess Dragon", "gold")
my_dragon.feed(200)
my_dragon.feed
my_dragon.feed
my_dragon.feed
my_dragon.walk
my_dragon.walk
my_dragon.nap
my_dragon.nap
my_dragon.play
my_dragon.play
my_dragon.play


#if were feeding dragon
# dragon.rb:32:in `<main>': uninitialized constant Dragon (NameError)
# dragon.rb:32:in `<main>': uninitialized constant Dragon (NameError)
# fixed by realizing you made a def Dragon, NOT CLASS DRAGON.
