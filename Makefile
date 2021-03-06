CLASSPATH= ./gen/classes
JAVA_SRC_PATH = ./src/com/sasken/demo
HEADER_FILE = ./include
BIN_PATH = ./gen/bin
vpath %.class $(CLASSPATH)

#CPATH=-I /usr/lib/jvm/default-java/include -I /usr/lib/jvm/default-java/include/linux -I ./
CPATH=-I /usr/lib/jvm/java-6-openjdk-i386/include/ -I /usr/lib/jvm/java-6-openjdk-i386/include//linux -I ./ndk/include

#all: libDemojni.so

libDemojni.so:demojni.o
	g++ -shared $(BIN_PATH)/demojni.o -o libs/libDemojni.so	

demojni.o: ndk/demojni.cpp demojni.h
	mkdir -p gen/bin
	g++ -fPIC $(CPATH) -c ndk/demojni.cpp -o gen/bin/demojni.o

demojni.h: Hello.class	
	javah -classpath $(CLASSPATH) -o $(HEADER_FILE)/demojni.h com.sasken.demo.Hello
	cp $(HEADER_FILE)/demojni.h ndk/include
	rm $(HEADER_FILE)/demojni.h

Hello.class : $(JAVA_SRC_PATH)/Hello.java
	mkdir -p gen/classes
	javac -d gen/classes/ $(JAVA_SRC_PATH)/Hello.java
clean:
	rm -rf gen/classes/* gen/bin/* libs/libDemojni.so ndk/include/demojni.h



