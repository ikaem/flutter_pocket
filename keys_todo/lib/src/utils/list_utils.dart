import 'dart:math';

class ListUtils {
  static List<T> shuffle<T>(List<T> items) {
    // return items;

    /* so we want to get a random instance  */
    final random = Random();

    // then loop over items
    for (int i = items.length - 1; i > 0; i--) {
      // we use i + 1, becuase we only want to get random number from 0 to current value of I - we dont want potentually get elements that we already looped over
      final randomNumber = random.nextInt(i + 1);

      final temp = items[i];
      items[i] = items[randomNumber];
      items[randomNumber] = temp;
    }

    return items;
  }
}
