// one way
var numbers = [1,2,3,4,5,6,7,8,9,10]
var sum = 0
for (var i=0;i < numbers.length; i++){
  sum += numbers[i]
}

// sum = 55
console.log(sum)

// another way
sum = 0
numbers.forEach(function(n){
  sum += n
})

console.log(sum)