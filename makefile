README.md:
	echo "**Unix Coursera Project**" >> README.md
	echo $(date)
	date >> README.md
	wc -l < guessinggame.sh >> README.md
