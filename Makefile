CXX = clang++
CXXFLAGS = -lncurses

all: main.cpp
	@echo "Build..."
	@$(CXX) $(CXXFLAGS) main.cpp -o main.out

clean:
	@echo "Clean..."
	@rm main.out
