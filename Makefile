CC = g++
CFLAGS = -Wall
EXEC_NAME = engine.exe
INCLUDES =
LIBS =
OBJ_FILES = fichier_1.o fichier_2.o
INSTALL_DIR = ./bin

all : $(EXEC_NAME)

clean :
  rm $(EXEC_NAME) $(OBJ_FILES)

$(EXEC_NAME) : $(OBJ_FILES)
  $(CC) -o $(EXEC_NAME) $(OBJ_FILES) $(LIBS)

%.o: %.cpp
  $(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<

%.o: %.cc
  $(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<

%.o: %.c
  gcc $(CFLAGS) $(INCLUDES) -o $@ -c $<

install :
  cp $(EXEC_NAME) $(INSTALL_DIR)