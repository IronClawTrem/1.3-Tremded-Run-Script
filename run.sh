# Run an infinate loop
while true; do
	#---------------------------------
	#PUT YOUR REGULAR RUN SCRIPT HERE
	#---------------------------------
    if read -r -s -n 1 -t 6 -p "Press any key in the next 5 seconds to abort restarting the game server..."
    then
      echo $'\a\naborted'
      break
    else
      echo $'\nrestarting'
    fi
done
