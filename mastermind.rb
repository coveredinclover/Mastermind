# Make the game mastermind

# Make an array of colors and sample that array to produce a code

# Loop pushing colors to an array.

# 

# Push x number of objects (containing arguments color and place, color being random
# and place ticking up by one with each object) to an array.

# 

user_array = []
array1 = ["green", "red", "blue"]
push_array = []


p "lmk how many bb"
times = gets.chomp.to_i


while times > 0
  push_array.push(array1[rand(3)])
  times -= 1
end

times2 = push_array.length

p "Taking input #{push_array.length} times."
while times2 > 0
  user_array.push(gets.chomp)
  times2 -= 1
end

p push_array