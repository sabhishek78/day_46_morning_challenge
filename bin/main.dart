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
  print(distributeCandies(7,4));
}
List<int> distributeCandies(int candies, int people){
 int numberOfTerms=terms(candies);
 fillList(numberOfTerms,candies,people);
}
int terms(int candies){
  int n=1;
  while(n*(n+1)/2<candies){
    n++;
  }
  return n;
}
List<int> fillList(int numberOfTerms, int candies, int people){
  List<int> finalList=[];
}