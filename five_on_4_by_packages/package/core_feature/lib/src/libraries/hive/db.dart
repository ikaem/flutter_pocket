import 'package:core_feature/src/libraries/hive/db_box.dart';
import 'package:hive/hive.dart';

// TODO this should also have a single instance
class DB {
  DB() {
    // TODO not sure if this what path should be here
    // https: //blog.logrocket.com/handling-local-data-persistence-flutter-hive/
    Hive.init("/");
  }

  Future getBox() async {
    // TODO or create a separated db record for this too - probably better since we only need special data
    final what = await Hive.openLazyBox<PlayerDTO>(DBBox.players);
  }
}
