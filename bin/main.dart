// Distribute Candies to People
// We distribute some number of candies, to a row of n = num_people people in the following way:
//
// We then give 1 candy to the first person, 2 candies to the second person,
// and so on until we give n candies to the last person.
//
// Then, we go back to the start of the row, giving n + 1 candies to the first
// person, n + 2 candies to the second person, and so on until we give 2 * n candies to the last person.
//
//This process repeats (with us giving one more candy each time, and moving to
// the start of the row after we reach the end) until we run out of candies.
// The last person will receive all of our remaining candies (not necessarily one more than the previous gift).
//
//  Return an list (of length num_people and sum candies) that represents the
// final distribution of candies.
// Example
// Input: candies = 7, num_people = 4
//  Output: [1,2,3,1]

main() {
 //print(distributeCandies(7,4));
// print(distributeCandies(5,2));
//print(coinsEarnedAtIndex([5],0)) ;
//print(coinsEarnedAtIndex([5],1)) ;
//print(coinsEarnedAtIndex([1,2],0));
//print(coinsEarnedAtIndex([1,2],1));
//print(coinsEarnedAtIndex([1,2,3],0)) ;
//print(coinsEarnedAtIndex([1,2,3],1)) ;
//print(coinsEarnedAtIndex([1,2,3],2)) ;
print(maxCoinsEarned([1,2,3]));
}
List<int> generateInputList(int candies){
  int n=terms(candies);
  List<int> inputList=List<int>.generate(n-1, (i) => i + 1);
  int  S= ((n-1)*n/2).toInt();
  inputList.add(candies-S);
  return inputList;
}
int terms(int candies){
  int n=1;
  while(n*(n+1)/2<candies){
    n++;
  }
  return n;
}
List<int> distributeCandies(int candies,int people){
  List<int> inputList=generateInputList(candies);
  List<int> outputList=List<int>.generate(people,(i)=>0);
 //print(outputList);
// print(inputList);
  int count=0;
  while(count<inputList.length){
    for(int i=0;i<outputList.length;i++){
      if(!(count<inputList.length)){
        return outputList;
      }
      outputList[i]=outputList[i]+inputList[count];
      count++;
    }
  }
  return outputList;
}


// Challenge 2
// Burst Balloons
// Given n balloons, indexed from 0 to n-1. Each balloon is painted with a number
// on it represented by array nums. You are asked to burst all the balloons.
// If the you burst balloon i you will get nums[left] * nums[i] * nums[right] coins.
// Here left and right are adjacent indices of i. After the burst, the left and
// right then becomes adjacent.
//
//  Find the maximum coins you can collect by bursting the balloons wisely.

// Stage 1
// Write a function which calculates total coins earned by bursting a balloon at index 'i'

// Stage 2
// Implement the algorithm to calculate the maximum coins that can be earned.
coinsEarnedAtIndex(List balloonList,int balloonIndex){
  int leftIndexValue;
  int rightIndexValue;
 if(balloonIndex>=balloonList.length){
   return 0;
 }
 else if(balloonIndex==0){
     if(balloonList.length==1){
       leftIndexValue=1;
       rightIndexValue=1;
     }
     else{
       leftIndexValue=1;
       rightIndexValue=balloonList[balloonIndex+1];
     }
   }
   else if(balloonIndex==balloonList.length-1){
   leftIndexValue=balloonList[balloonIndex-1];
     rightIndexValue=1;
   }
   else {
   leftIndexValue=balloonList[balloonIndex-1];
   rightIndexValue=balloonList[balloonIndex+1];
   }
 return leftIndexValue*balloonList[balloonIndex]*rightIndexValue;
 }

maxCoinsEarned(List<int> balloonList){
 if(balloonList.length==1){
   return balloonList.first;
 }
 int maxCoins=0;
 for(int i=0;i<balloonList.length;i++){
   List<int> copy=List.from(balloonList);
   int coinsFromI=coinsEarnedAtIndex(copy,i);
   copy.removeAt(i);
   coinsFromI=coinsFromI+maxCoinsEarned(copy);
   if(maxCoins<coinsFromI){
     maxCoins=coinsFromI;
   }
 }
 return maxCoins;
}
