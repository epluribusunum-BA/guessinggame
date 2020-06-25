readme.md:
	touch readme.md
	echo "Title : " >> readme.md
	echo "Guessing Game" >> readme.md
	echo " " >> readme.md
	echo "Date: " >> readme.md
	date >> readme.md
	echo " " >> readme.md
	echo "Lines of code : " >> readme.md
	wc -l guessinggame.sh >> readme.md
