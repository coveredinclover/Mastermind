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
bool_array = []

p "lmk how many bb"
times = gets.chomp.to_i
times3 = times

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

n = 0
while times3 > 0
  if push_array[n] == user_array[n]
    bool_array.push(true)
  else
    bool_array.push(false)
  end
  times3 -= 1
  n += 1
end

p push_array
p bool_array

print_array = []
m = 0
for i in bool_array
  if bool_array[m] == true
    print_array.push("🟢")
  else
    print_array.push("🔴")
  end
  m += 1
end

p print_array