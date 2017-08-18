CPP_FILES := $(wildcard src/*.cpp)


main.exe: 
	g++ $(CPP_FILES) -o $@ $^
