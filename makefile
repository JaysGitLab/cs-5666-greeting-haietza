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
  GreetingTest6a.java GreetingTest6b.java GreetingTest6c.java GreetingTest6d.java
	javac -cp .:$(JUNIT_JAR) GreetingTest3.java
	javac -cp .:$(JUNIT_JAR) GreetingTest4.java
	javac -cp .:$(JUNIT_JAR) GreetingTest5.java
	javac -cp .:$(JUNIT_JAR) GreetingTest6a.java
	javac -cp .:$(JUNIT_JAR) GreetingTest6b.java
	javac -cp .:$(JUNIT_JAR) GreetingTest6c.java
	javac -cp .:$(JUNIT_JAR) GreetingTest6d.java
	javac Greeting.java

clean:
	rm -f Greeting.class
	rm -f GreetingTest3.class
	rm -f GreetingTest4.class
	rm -f GreetingTest5.class
	rm -f GreetingTest6a.class
	rm -f GreetingTest6b.class
	rm -f GreetingTest6c.class
	rm -f GreetingTest6d.class

test: Greeting.class 
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest3
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest4
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest5
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest6a
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest6b
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest6c
	java -cp .:$(JUNIT_JAR):$(HAMCREST_JAR) org.junit.runner.JUnitCore GreetingTest6d

