// You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a function that takes the array as an argument and returns this “outlier” N.

//should return 11

let arr = [2, 4, 0, 100, 4, 11, 2602, 36]

function findOutlier(arr){
  let outlier = [];
  evenCount = 0;
  oddCount = 0;
  
  for(let i = 0; i < numArr.length; i++){
    if(numArr[i] % 2 === 0){
      evenCount += 1;
      arr.push(numArray[i]);
    } else {
      oddCount += 1;
      arr.push(numArray[i]);
    }
  }

  
  }

console.log(findOutlier(arr));