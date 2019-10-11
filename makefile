all: README.md

README.md: guessinggame.sh
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub\n" > README.md
	echo "Date/time:" >> README.md
	date >> README.md
	echo "\nLines in gussinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

