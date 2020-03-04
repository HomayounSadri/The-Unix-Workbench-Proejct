all: toc.txt README.md

toc.txt:
	date > toc.txt

README.md: toc.txt
	echo "The Unix Workbench Project: Guessing Game" > README.md
	echo ""
	echo "Date and time at which make was run:" >> README.md
	cat toc.txt >> README.md
	echo ""
	echo "Number of lines of code in guessinggame.sh is" >> README.md 
	cat guessinggame.sh | wc -l >> README.md
	rm toc.txt

clean:
	rm README.md
