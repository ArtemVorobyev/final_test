
readme:
	touch README.md

	echo "# Final exercise for Coursera Unix Workbench class" > README.md
	
	echo "the file was run at  `date`;" >> README.md
	echo "there are `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines in guessinggame.sh file" >> README.md

clean:
	rm README.md
