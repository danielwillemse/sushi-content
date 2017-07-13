secret_number = (rand * 9).to_i
tries = 5

# Ask the player's name
puts("What is your name?")
name = gets.chomp
puts("Hello "+name+", you have "+tries.to_s+" to guess the secret number.")
puts("The number is somewhere between 0 and 9.")

# Loop while the player still has tries left
while tries > 0 do
  # vraag de gebruiker om een getal
  puts("Please pick a number")
  chosen_number = gets.chomp
  chosen_number = chosen_number.to_i

  if (chosen_number > secret_number)
    # The number is too high. Tell the player how many tries are left.
    puts("The number you chose is too big")
    tries = tries - 1
    puts("You still have "+tries.to_s+" tries left.")
  elsif (chosen_number < secret_number)
    # The number you chose is too small. Tell the player how many tries are left.
    puts("The number you chose is too small")
    tries = tries - 1
    puts("You still have "+tries.to_s+" tries left.")
  else
    # The player guessed the number!
    puts("Congratulations, you guessed the number!")
    puts("You've won!")
    # Set the number of tries to -1 or else you will loop forever!
    tries = -1
  end

  if tries == 0
    puts("Awww, too bad. You've lost.")
  end
end


