//1. Create an array with 5 names. Print out the 5 names in all UPPERCASE all on the same line.
console.log("\n1. Create an array with 5 names. Print out the 5 names in all UPPERCASE all on the same line.\n")

const names = ["becca", "dee", "devin", "chris", "kaida"]
let name = ''

for (const i in names){
  name += names[i].toUpperCase()+' '
}

console.log(name)

//2a. Create an array with 3 boolean values. Print out YES if all the values are true and NO if at least one value is false. 

console.log("\n2a. Create an array with 3 boolean values. Print out YES if all the values are true and NO if at least one value is false.\n")


const booleanVals = [true, true, true]
let counter = 0

for (const i in booleanVals){
  if (booleanVals[i] == false){
    counter += 1
  }
}
if (counter == 0){
  console.log("YES")
}else{
  console.log("NO")
}

//2b. Write a function that takes an array of boolean values as an argument. Return YES if all the values are true and NO if at least one value is false.
console.log("\n2b. Write a function that takes an array of boolean values as an argument. Return YES if all the values are true and NO if at least one value is false.\n" )

const yesNo = (booleanVals) => {
  for (const i in booleanVals){
    if (booleanVals[i] == false){
      return "NO"
    }
  }
  return "YES"
}

console.log(yesNo([true, false, true]))
console.log(yesNo([true, true, true]))