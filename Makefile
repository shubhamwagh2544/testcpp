CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra -Iinclude -g
SRC := $(wildcard src/*.cpp)
OBJ := $(patsubst src/%.cpp, build/%.o, $(SRC))
TARGET := bin/main

.PHONY: all build run clean

all: build run

build: $(TARGET)

$(TARGET): $(OBJ)
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -o $@ $^

build/%.o: src/%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

run: build
	./$(TARGET)

clean:
	rm -rf build bin

# Usage:
#  make        -> builds and runs
#  make build  -> only builds
#  make run    -> builds (if needed) and runs
#  make clean  -> removes build artifacts
