
install: b2b.sh /usr/bin/
	sudo chmod u+x $<
	sudo cp $< /usr/bin/b2b


uninstall: /usr/bin/b2b
	sudo rm $<


test: b2b.sh
	./b2b.sh -h 7a69
	./b2b.sh -b 11010
	./b2b.sh -d 31337