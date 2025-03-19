CPP=clang++
CPPFLAGS=-lncurses -o main.out

all:
	@echo "Build..."
	@$(CPP) $(CPPFLAGS) main.cpp

install:
	@echo "Build..."
	@echo "Install..."
	@$(CPP) $(CPPFLAGS) main.cpp
	@sudo cp main.out /usr/local/bin/paddingsweet

uninstall:
	@echo "Uninstalling..."
	@sudo rm /usr/local/bin/paddingsweet

clean:
	@echo "Clean..."
	@rm main.out
