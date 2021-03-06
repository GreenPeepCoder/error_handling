# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue => exception
    puts "Couldn't take #{str} as an arg"
    puts exception.message
    return nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit

  begin
    puts "Hello, I am a friendly monster. :)"
  
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
    
  rescue 
    if maybe_fruit == "coffee"
      puts "Thanks for the coffee, but that's not a fruit. Guess again."
      retry
    end
    raise StandardError
  end

end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    unless yrs_known >= 5
      raise ArgumentError.new "We're not bffs because we've only known each other for #{yrs_known} years"
    end
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    if @name.empty? || @fav_pastime.empty?
      raise ArgumentError.new "Tell me your name, and a hobby. Then we can be friends."
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


