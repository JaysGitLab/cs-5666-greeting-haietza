#
# makefile 
#
# input file for 'make' build tool ( /usr/bin/make )
#
# @author Michelle Melton 
# @version Spring 2017
#

default: 
	@echo "usage: make target"
	@echo "available targets: compile, test, clean"

compile: Greeting.java 
	javac Greeting.java

clean:
	rm -f Greeting.class

test: Greeting.class 
	java Greeting 

