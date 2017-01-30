#
# makefile 
#
# input file for 'make' build tool ( /usr/bin/make )
#
# @author Michelle Melton 
# @version Spring 2017
#

JUNIT_JAR = /usr/share/java/junit-4.10.jar
HAMCREST_JAR = /usr/share/java/hamcrest/core-1.1.jar

default: 
	@echo "usage: make target"
	@echo "available targets: compile, test, clean"

compile: Greeting.java GreetingTest.java 
	javac -cp .:$(JUNIT_JAR) GreetingTest.java
	javac Greeting.java

clean:
	rm -f Greeting.class
	rm -f GreetingTest.class

test: Greeting.class 
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest 

