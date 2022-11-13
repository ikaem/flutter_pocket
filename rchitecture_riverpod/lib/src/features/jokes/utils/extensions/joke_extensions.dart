import 'package:rchitecture_riverpod/src/features/jokes/domain/models/joke.dart';

extension LikeExtension on Joke {
  Joke addLike() {
    final copy = copyWith(
      likesCount: likesCount + 1,
    );

    return copy;
  }

  Joke removeLike() {
    final copy = copyWith(
      likesCount: likesCount > 0 ? likesCount - 1 : likesCount,
    );

    return copy;
  }
}
