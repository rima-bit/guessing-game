README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	wc -l < guessinggame.sh | xargs echo "The script contains" >> README.md
