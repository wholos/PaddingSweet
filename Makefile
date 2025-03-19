CPP=clang++
CPPFLAGS=-lncurses -o main.out

all: main.c
	@echo "Build..."
	@$(CPP) $(CPPFLAGS) main.c

install:
	@echo "Build..."
	@echo "Install..."
	@$(CPP) $(CPPFLAGS) main.c
	@sudo cp main.out /usr/local/bin/paddingsweet

uninstall:
	@echo "Uninstalling..."
	@sudo rm /usr/local/bin/paddingsweet

clean:
	@echo "Clean..."
	@rm main.out
