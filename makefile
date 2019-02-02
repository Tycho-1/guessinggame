all: README.md

README.md: guessinggame.sh
	echo "# Summary for the assignment, part of the course 'The Unix Workbench'" > README.md
	echo "- The date of running of the makefile:"  >> README.md
	date >> README.md 
	echo "- The number of line in the guessinggame.sh file:"  >> README.md
	cat guessinggame.sh | wc -l >> README.md
clean:
	rm README.md
