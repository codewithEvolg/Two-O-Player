# Initialize player scores and lives
player1_lives = 3
player2_lives = 3
player1_score = 0
player2_score = 0

# Initialize current player
current_player = "Player 1"

# Main game loop
while true
  # Generate two random numbers for the math question
  num1 = rand(1..20)
  num2 = rand(1..20)

  # Calculate the correct answer
  correct_answer = num1 + num2

  # Prompt the current player with the math question
  print "#{current_player}, what is #{num1} + #{num2}? "
  player_answer = gets.chomp.to_i

  # Check if the answer is correct
  if player_answer == correct_answer
    puts "Correct!"
    if current_player == "Player 1"
      player1_score += 1
    else
      player2_score += 1
    end
  else
    puts "Wrong answer!"
    if current_player == "Player 1"
      player1_lives -= 1
    else
      player2_lives -= 1
    end
    # Switch turns
    current_player = (current_player == "Player 1") ? "Player 2" : "Player 1"
  end

  # Display current scores
  puts "Player 1: Lives = #{player1_lives}, Score = #{player1_score}"
  puts "Player 2: Lives = #{player2_lives}, Score = #{player2_score}"
  puts

  # Check if the game is over
  if player1_lives == 0 || player2_lives == 0
    if player1_lives == 0
      puts "Player 2 wins with a score of #{player2_score}!"
      puts "Player 1's score: #{player1_score}"
    else
      puts "Player 1 wins with a score of #{player1_score}!"
      puts "Player 2's score: #{player2_score}"
    end
    break
  end
end