//Defining and invoking a function with no arguments
const helloWorld = function() {
  console.log("Hello World!");
}

helloWorld();

//Defining and invoking a function with an argument
const saySomething = function(something) {
  console.log(`${something}, said Becca `);
}

// function saySomething(something) {
//   console.log(`${something}, said Becca `);
// }

saySomething("Hello World");

//EDUCATIVE
//Write a function that takes in a number greater than or equal to 0. If the number is greater than 10, round up to the nearest integer. If the number is below 10, round down to the nearest integer. If the number is an integer, don’t round.

/*round(9); // -> 9
round(10); // -> 10
round(11); // -> 11
round(10.1); // -> 11
round(10.88); // -> 11
round(9.9); // -> 9
round(9.1); // -> 9
round(0.1); // -> 0*/

const round = function(n) {
  // if the number is greater than 10, rond up
  if (n >= 10) {
    return Math.ceil(n);
  // else, round down
  } else {
    return Math.floor(n);
  }
}

console.log(round(10));
console.log(round(10.4));
console.log(round(9.4));

//Write a method checkends(s), which takes in a string s and returns true if the first character in s is the same as the last character in s. It returns false otherwise. The checkends(s) method does not have to work on the empty string (the string '').

//flipside
const checkends = function(s) {
  return s[0] === s[s.length-1];
}

console.log(checkends('aha'));

// flipside
// flipside('homework') => workhome
// flipside ('house') => useho
// flipside ('jared') => redja
const flipside = function(s) {
  const n = s.length;
  const middle = n/2;
  return s.slice(middle,n)+s.slice(0,middle)
}

console.log(flipside('homework'))
console.log(flipside('jared'))

//rps

//function that takes 2 arguements, player 1 and 2
const rps = function(player1, player2) {
  if (player1 === player2) {
    return "tie";
  } else {
    if (player1 === "rock"){
      if (player2 === "paper"){
        return "player2";
      } else {
        return "player1";
      }
    } else if (player1 === "paper") {
      if (player2 === "rock"){
        return "player1";
      } else {
        return "player2";
      }
    } else if (player1 == "scissors") {
      if (player2 == "rock"){
        return "player2";
      } else {
        return "player1";
      }
    } else {
      return "Must be Rock, Paper, or Scissors";
    }
  }
}

let winner = rps("rock", "paper")
console.log(winner)


//console.log(rps('rock','paper'))
//console.log(rps('rock','rock'))


//check if there's a tie

//otherwise we'll do some tiebreaking logic

//outline the 3 options for player 1