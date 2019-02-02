all: readme.md

readme.md: guessinggame.sh
	echo "# Summary for the assignment, part of the course 'The Unix Workbench'" > readme.md
	echo "- The date of running of the makefile:"  >> readme.md
	date >> readme.md 
	echo "- The number of line in the guessinggame.sh file:"  >> readme.md
	cat guessinggame.sh | wc -l >> readme.md
clean:
	rm readme.md
