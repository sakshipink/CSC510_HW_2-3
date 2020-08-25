package main

import (
	"fmt"
)

func gameOfLife(board [][]int) [][]int {
	// This function takes in a list of list as input, and computes the
	// next stage according to Game of LIfe rules:
	// The rules are as follows:
	// 1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
	// 2. Any live cell with two or three live neighbours lives on to the next generation.
	// 3. Any live cell with more than three live neighbours dies, as if by overpopulation.
	// 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
	
    var neighbors [][]int = [][]int{{-1, -1}, {-1, 0}, {-1, 1},
									{0, -1}, {0, 0}, {0, 1},
									{1, -1}, {1, 0}, {1, 1},}
        
	for row:= 0; row< len(board); row++ {
		for col:= 0; col< len(board[0]); col++{
			live_neighbors := 0
			for _, neighbor := range neighbors{
				r = row + neighbor[0]
				c = col + neighbor[1]
				
				if (r < len(board) && r > 0) && (c < len(board[0]) && c > 0) && Abs(board[r][c]) == 1{
					live_neighbors += 1
				}
				
			}
			if board[row][col] == 1 && (live_neighbors < 2 || live_neighbors >3){
				board[row][col] = 2
			}
			if board[row][col] == 0 && (live_neighbors == 3){
				board[row][col] = -1
			}
		}
	}
    for row:= 0; row < len(board); row++{
        for col:= 0; col < len(board[0]); col++ {
            if board[row][col] > 0{
               board[row][col] = 1 
            } else{
                board[row][col] = 0
            }
	}
	return board
}

func Abs(x int) int {
	// This function returns the absolute value of an integer input
	if x < 0 {
		return -x
	}
	return x
}

func print_game(board [][]int) {
	// This function prints the GOL board to the CLI
	for row:= 0; row < len(board);row++{
		fmt.Println(board[row])
	}
	fmt.Println("*********")
}

func main(){
	n := 5 // Number of rounds to go through
	x := [][]int{{0,1,0}, {0,0,1}, {1,1,1}, {0,0,0}}
	i := 0
	for i < n{
		fmt.Printf("Iteration %v\n", i+1)
		x = gameOfLife(x)
		print_game(x)
		i += 1
	}
}
