Shell Scripting code:
#!/bin/bash
 
# Get the user's name
read -p "What is your name? " name
 
# Get the current hour
hour=$(date +%H)
 
# Determine the greeting based on the hour
if [ $hour -lt 12 ]; then
  greeting="Good morning"
elif [ $hour -lt 18 ]; then
  greeting="Good afternoon"
else
  greeting="Good evening"
fi
 
# Print the greeting with the user's name
echo "$greeting, $name!"
