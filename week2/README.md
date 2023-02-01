# Assignments : Introduction to C++

- **Exercise 1** 
  - Write a function that takes two integer arguments, a and b, and swaps their values.
  - In the main function, create two arrays A and B, that hold 10 integer numbers each. Use the function that you wrote to swap all values of A to B and vice-versa.

- **Exercise 2**
  - Create a data structure that will hold information about the TAC-HEP students such as name, email, username, experiment etc.
  - From the main function create multiple objects, one for each student including yourselves.
  - Create a function that takes the struct as an argument and prints out the values of all struct members. Make sure to pass the struct by reference and ensure that members values cannot change.

- **Exercise 3**
  - Create a function that simulates the game "rock, paper, scissors". The function should take as input the choice of both players (rock, paper or scissors). The function should return the player who won or if there was a draw.

- **Exercise 4**
  - Take a look at the `main.cc` code in the [Exercise 4](https://github.com/ckoraka/tac-hep-gpus/tree/main/week2/Exercise4) directory. This code reads branches from a ROOT tree containing lepton and jet kinematic information. To see the type of each variable take a look at the headerfile `hh/t1.h`.
  - For the `Particle` class, add 1 more constructor that takes 4 arguments (4-momentum).
  - Fix all member functions adding the appropriate implementation (denoted with **FIXME**).
  - Using the `Particle` class, create two daughter classes, one for leptons (e.g. Lepton) and one for jets (e.g. Jet). 
    - To the lepton daughter class, add an additional member function that reads / stores the lepton charge.
    - To the jet daughter class, add an additional member function that reads / stores the jet hadron flavor ( FYI, the value of the hadron flavor is 5 if jets are originating from b-hadrons, 4 if jet is originating from c-hadron and 0 if jet is originating from u,d,s hadrons or gluons). 
  - In the main function, access event jets and leptons (NOTE: these are arrays, so you should create an additional loop to sead the elements of each variable).
    - For each jet, create a jet object and print out the values of all its members.
    - For each lepton, create a lepton object and print out the values of all its members.
