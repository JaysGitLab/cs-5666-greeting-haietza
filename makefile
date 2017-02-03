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

compile: Greeting.java GreetingTest3.java GreetingTest4.java GreetingTest5.java\
  GreetingTest7a.java GreetingTest7b.java GreetingTest7c.java GreetingTest7d.java
	javac -cp .:$(JUNIT_JAR) GreetingTest3.java
	javac -cp .:$(JUNIT_JAR) GreetingTest4.java
	javac -cp .:$(JUNIT_JAR) GreetingTest5.java
	javac -cp .:$(JUNIT_JAR) GreetingTest7a.java
	javac -cp .:$(JUNIT_JAR) GreetingTest7b.java
	javac -cp .:$(JUNIT_JAR) GreetingTest7c.java
	javac -cp .:$(JUNIT_JAR) GreetingTest7d.java
	javac Greeting.java

clean:
	rm -f Greeting.class
	rm -f GreetingTest3.class
	rm -f GreetingTest4.class
	rm -f GreetingTest5.class
	rm -f GreetingTest7a.class
	rm -f GreetingTest7b.class
	rm -f GreetingTest7c.class
	rm -f GreetingTest7d.class

test: Greeting.class 
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest3
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest4
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest5
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest7a
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest7b
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest7c
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest7d

