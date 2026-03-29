#!/bin/bash

# Script 5: Open Source Manifesto Generator
# This script creates a personalized open-source statement

echo "Enter your name:"
read name

echo "Why do you like open source?"
read reason

echo "What will you contribute?"
read contribution

# Get date
today=$(date)

# Create manifesto text
manifesto="On $today, $name believes in open source because $reason. 
They plan to contribute by $contribution. 
Open source is about freedom, collaboration, and innovation."

# Save to file
echo "$manifesto" > manifesto.txt

echo "Your manifesto has been saved to manifesto.txt"

# Example alias (concept demonstration)
# alias makemanifesto='bash manifesto.sh'