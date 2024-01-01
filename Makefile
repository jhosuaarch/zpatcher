CC := g++
CFLAGS := -std=c++11 -Wall
LDFLAGS :=
LIBS := $(shell python-config --cflags --ldflags --libs)  # Lib Python

all: zpatcher

zpatcher: zpatcher.cpp
	$(CC) -w -o zpatcher zpatcher.cpp $(CFLAGS) $(LIBS)

clean:
	rm -f zpatcher
