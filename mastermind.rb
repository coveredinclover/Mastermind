# Make the game mastermind

# Make an array of colors and sample that array to produce a code

# Loop pushing colors to an array.

# 

# Push x number of objects (containing arguments color and place, color being random
# and place ticking up by one with each object) to an array.

# 


$array1 = ["green", "red", "blue"]
$user_array = []
$push_array = []
$bool_array = []
$guesses = 0

class Start
  def self.begin
    p "lmk how many bb"
    times = gets.chomp.to_i
    times3 = times
    while times > 0
      $push_array.push($array1[rand(3)])
      times -= 1
    end
    @@n = 0
    p "These colors are available."
    for i in $array1
      p "#{$array1[@@n]}"
      @@n += 1
    end
  end

end

class Guess
  def self.getter
    p "Taking input #{$push_array.length} times."
    for i in $push_array
      $user_array.push(gets.chomp)
      $guesses += 1
    end
  end
end

class BoolParty
  def self.exact
    n = 0
    for i in $user_array
      if $push_array[n] == $user_array[n]
        $bool_array.push(true)
      else
        $bool_array.push(false)
      end
      n += 1
    end

  end
end

class Wordle
  def self.exact
    $print_array = []
    m = 0
    for i in $bool_array
      if $bool_array[m] == true
        $print_array.push("🟢")
      else
        $print_array.push("🔴")
      end
      m += 1
    end
    p $print_array
  end
end


class GameEnd
  def self.checker
    if $bool_array.all?{|num| num == true}
      p "You win!"
    else
      p "Try again!"
      $user_array = []
      $bool_array = []
      $print_array = []
      GameplayLoop.loop
      
    end
  end
end

class GameplayLoop
  def self.loop
    Guess.getter
    BoolParty.exact
    Wordle.exact
    GameEnd.checker
  end
end

Start.begin
GameplayLoop.loop
