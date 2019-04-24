# placeholder

# Settings & flags
CXX=g++
CXXFLAGS=-O3 -Wall -std=c++11
SRCDIR=../src
BINDIR=../bin

SRC=$SRCDIR/*.cpp
OBJECTS=$(SOURCES:.cpp=.o)

all: $(SOURCES) $(LIBRARY)
    
$(LIBRARY): $(OBJECTS) 
	ar rvs $@ $^ 

.cpp.o:
	$(CXX) -std=c++11 -c $< -o $@

clean:
	rm -f $(OBJECTS)

