#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
# set secret random number
SECRET_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
echo $SECRET_NUMBER
GUESSES=0
#get username
echo "Enter your username:"
read NAME
  USERNAME=$($PSQL "SELECT username FROM games WHERE username='$NAME'")
  #if username doesnt exist
  if [[ -z $USERNAME ]] 
  then 
  #set username first time message
    USERNAME=$NAME
    BEST_GAME=1000
    echo $($PSQL "INSERT INTO games(username, games_played, best_game) VALUES ('$USERNAME', 1, 1000)")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
  #use username and set up new game
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM games WHERE username='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT best_game FROM games WHERE username='$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    (($GAMES_PLAYED++))
    echo $($PSQL "UPDATE games SET games_played=$GAMES_PLAYED WHERE username='$USERNAME'")
  fi
echo "Guess the secret number between 1 and 1000:"
while true
do
  read GUESS
  ((GUESSES++))
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else 
    if [[ $GUESS -lt $SECRET_NUMBER ]] 
    then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    else 
      if [[ $GUESSES -lt $BEST_GAME ]]
      then
        echo $($PSQL "UPDATE games SET best_game=$GUESSES WHERE username='$USERNAME'")
      fi
      echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      exit 
    fi
  fi
done 