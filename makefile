all: README.md

README.md: guessinggame.sh
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub\n" > README.md
	date >> README.md
	echo "LINES" `wc -l guessinggame.sh | egrep -o "[0-9]+"` >> README.md

