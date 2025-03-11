CC=g++
CFLAGS=-std=c++11 -Wall
SRC_DIR=src
INCLUDE_DIR=include
OBJ_DIR=obj

all : jogosDeTabuleiro

$(OBJ_DIR)/Tabuleiro.o: $(INCLUDE_DIR)/Tabuleiro.hpp $(SRC_DIR)/Tabuleiro.cpp
	$(CC) $(CFLAGS) -c $(SRC_DIR)/Tabuleiro.cpp -I$(INCLUDE_DIR) -o $(OBJ_DIR)/Tabuleiro.o

$(OBJ_DIR)/Jogadores.o: $(INCLUDE_DIR)/Jogadores.hpp $(SRC_DIR)/Jogadores.cpp
	$(CC) $(CFLAGS) -c $(SRC_DIR)/Jogadores.cpp -I$(INCLUDE_DIR) -o $@

$(OBJ_DIR)/lig4.o: $(INCLUDE_DIR)/lig4.hpp $(SRC_DIR)/lig4.cpp
	$(CC) $(CFLAGS) -c $(SRC_DIR)/lig4.cpp -I$(INCLUDE_DIR) -o $@

$(OBJ_DIR)/TicTacToe.o: $(INCLUDE_DIR)/TicTacToe.hpp $(SRC_DIR)/TicTacToe.cpp
	$(CC) $(CFLAGS) -c $(SRC_DIR)/TicTacToe.cpp -I$(INCLUDE_DIR) -o $@

$(OBJ_DIR)/main.o: $(INCLUDE_DIR)/Tabuleiro.hpp $(INCLUDE_DIR)/Jogadores.hpp $(INCLUDE_DIR)/lig4.hpp $(INCLUDE_DIR)/TicTacToe.hpp $(SRC_DIR)/main.cpp
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.cpp -I$(INCLUDE_DIR) -o $@

jogosDeTabuleiro: $(OBJ_DIR)/main.o $(OBJ_DIR)/TicTacToe.o $(OBJ_DIR)/lig4.o $(OBJ_DIR)/Jogadores.o $(OBJ_DIR)/Tabuleiro.o
	$(CC) $(CFLAGS) $^ -o $@

clean: $(OBJ_DIR)/main.o $(OBJ_DIR)/TicTacToe.o $(OBJ_DIR)/lig4.o $(OBJ_DIR)/Jogadores.o $(OBJ_DIR)/Tabuleiro.o
	rm $^