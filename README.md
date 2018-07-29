# README

This is my solution to the Codewars Kata [Did I Finish My Sudoku?](https://www.codewars.com/kata/did-i-finish-my-sudoku)

The challenge is to take a sudoku board as an array of arrays (rows) and check if it is a valid solution.

Namely, each row should have the values 1 - 9, as should each column and each 3x3 division of the board.

Any incomplete squares are represented by a 0.

# STYLISTIC CHOICES

I've included initial checks to immediately reject boards with any 0s, then check rows and columns, then 3x3 sections.

I believe these are readable and reasonably straightforward so have not divided these into seperate
one line functions.

# TESTS

I have included 5 test scenarios covering:

- valid board
- board with blank squares
- board with invalid row
- board with invalid column
- board with invalid 3x3 section

This solution has also passed the Codewars tests, but details of what these comprise are not provided on the site.
