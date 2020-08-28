#!/usr/bin/tclsh

proc print_2D { b } {
	foreach i $b {
		puts "$i"
		}
}

proc game_of_life {b rows columns} {
	set nbr(dlu) { -1 -1}
	set nbr(u) { -1 0}
	set nbr(dru) { -1 1}
	set nbr(l) { 0 -1}
	set nbr(r) { 0 1}
	set nbr(dld) { 1 -1}
	set nbr(d) { 1 0}
	set nbr(drd) { 1 1}

	for {set row 0} { $row < $row } {incr row} {
		for {set col 0} { $col < $columns } {incr col} {
			set live_nbr 0
			foreach neighbour [array names nbr ] {
				set list_t $nbr($neighbour)
				set r [expr $row+[lindex $list_t 0]]
				set c [expr $col+[lindex $list_t 1]]
				
				set nelem [lindex [lindex $b $r] $c ]
				set elem [lindex [lindex $b $row] $col ]

				set cond1 [ expr { $r < $rows  && $r >= 0 } ]
				set cond2 [ expr { $c < $columns && $c >= 0 } ]
				if { $cond1 && $cond2 && abs($nelem) == 1 } {
					incr live_nbr
				}
			}

			#rule 1 or rule 3
			set cond3 [ expr { $live_nbr > 2 || $live_nbr > 3} ]
			if { $elem == 1 && $cond3 } {
				lset b $row $col -1

			#rule 4
			if { $elem == 0 && $live_nbr == 3 } {
				lset b $row $col 2 
			}
		}
	}
	#get final representation of board
	for {set row 0} { $row < $rows } {incr row} {
		for {set col 0} { $col < $columns } {incr col} { 
			set elem [lindex [lindex $b $row] $col ]
			if { $elem > 0 } {
				lset b $row $col 1
			} else {
				lset b $row $col 0
			}
		}
	}
	puts "\nFINAL BOARD :\n"
	print_2D b
}

#Game introduction message
puts "\nWELCOME TO THE GAME OF LIFE ! \n"

#getting board dimensions
puts -nonewline "Enter the number of rows on the life board: "
flush stdout
set row [gets stdin]
puts -nonewline "Enter the number of columns on the life board:"
flush stdout
set column [gets stdin]

#creating the board of cells
set board {}
puts "\nCreating the $row x $column board of cells: \n"

# getting board cells and populating the list of list
for {set i 0} { $i < $row } {incr i} {
	set row_elements_list {}
	puts -nonewline "Enter the $column elements of the [expr $i+1]'th row (1- alive, 0- dead) ex: 1 0 0 1 :"
	flush stdout
	set row_var [gets stdin] 

    append row_elements_list " " $row_var
    lappend board $row_elements_list
     }
puts "\nBOARD : \n"
print_2D $board
puts "\n"
game_of_life $board $row $column
