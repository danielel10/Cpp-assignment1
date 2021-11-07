all: clean compile link

link:
	g++ -o bin/main bin/main.o bin/Workout.o bin/Trainer.o bin/Studio.o

compile:
	g++ -g -Wall -Weffc++ -c -o bin/main.o src/main.cpp
	g++ -g -Wall -Weffc++ -c -o bin/Studio.o src/Studio.cpp
	g++ -g -Wall -Weffc++ -c -o bin/Workout.o src/Workout.cpp
	g++ -g -Wall -Weffc++ -c -o bin/Trainer.o src/Trainer.cpp

clean:
	rm -f bin/*