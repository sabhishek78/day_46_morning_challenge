import 'package:test/test.dart';
import '../bin/main.dart';

void main() {

  test('distribute Candies', () {
    expect(distributeCandies(7,4),
        [1,2,3,1]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(5,1),
        [5]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(5,2),
        [3,2]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(5,3),
        [1,2,2]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(5,4),
        [1,2,2,0]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(5,5),
        [1,2,2,0,0]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(8,2),
        [4,4]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(8,3),
        [3,2,3]);
  });
  test('Burst Balloons', () {
    expect(coinsEarnedAtIndex([1,2,3,4],0),
        2);
  });
  test('Burst Balloons', () {
    expect(coinsEarnedAtIndex([1,2,3,4],1),
        6);
  });
  test('Burst Balloons', () {
    expect(coinsEarnedAtIndex([1,2,3,4],2),
        24);
  });
  test('Burst Balloons', () {
    expect(coinsEarnedAtIndex([1,2,3,4],3),
        12);
  });
  test('print max coins', () {
    expect( maxCoinsEarned([1,2,3,4]),
        40);
  });
  test('print max coins', () {
    expect( maxCoinsEarned([5,2,3,4]),
        115);
  });
  test('print max coins', () {
    expect( maxCoinsEarned([5]),
        5);
  });
  test('print max coins', () {
    expect( maxCoinsEarned([5,5]),
        30);
  });
  test('print max coins', () {
    expect( maxCoinsEarned([]),
        0);
  });
}