import 'package:test/test.dart';
import '../bin/main.dart';

void main() {

  test('distribute Candies', () {
    expect(distributeCandies(7,4),
        [1,2,3,1]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(1,5),
        [5]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(2,5),
        [1,4]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(3,5),
        [1,2,2]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(4,5),
        [1,2,2,0]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(5,5),
        [1,2,2,0,0]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(2,8),
        [4,6]);
  });
  test('distribute Candies', () {
    expect(distributeCandies(3,8),
        [3,2,3]);
  });
}