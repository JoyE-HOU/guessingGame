# Shell Scripting Activity:

randomNum=$(($RANDOM % 100))

counter=1

# Write a number guessing game where the user has to guess a randomly generated secret number between 0 and 100. 
echo "Welcome to The Guessing Game! Guess a number between 1 and 99 and I'll tell you how close you are to the answer until you get it right. Good Luck!"
echo "So what's your guess?"

read guess

# echo "So you guessed $guess"
echo $randomNum

# After each guess, tell the user if they guessed it right. 
until [ $guess == $randomNum ]
    do

        if [ $guess == $randomNum ]
            then
            echo "Wow!!! You guessed correctly on your first try!"

# And if not, tell the user if they were over or under and how far off their guess was using temperature adjectives (hot, warm, cold, etc..). 
# else

        elif [ $(($randomNum - $guess)) -le 10 ]
            then
            counter=$((counter+1))
            echo "You're pretty hot. Attempt #$counter"
            read guess
        elif [ $(($randomNum - $guess)) -le 25 ]
            then
            echo "But you're getting warmer. Attempt #$counter"
            read guess
        else
            echo "You're just cold. Attempt #$counter"
            read guess

        fi
        
        if [ $randomNum == $guess ]
            then
            echo "Correct! You got it right!!!"
            echo "Total attempts: $counter"
        fi
done

# Also in each try, display how many times they have tried so far.

# Hint: Bash has built in function $RANDOM that generates a pseudo random number between 0 and 32767. 
# Use Modulo operator to restrict the bounds of the random number (ie, for a random number between 0 and 10, $RANDOM % 10)