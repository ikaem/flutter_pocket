import 'package:auth_feature/src/data/data_sources/auth_db_api/auth_db_api.dart';
import 'package:auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';
import 'package:core_feature/core_feature.dart';
import "package:hive/hive.dart";

export "db_api.dart";

class AuthHiveDbApi implements AuthDbApi {
  static const kAuthBoxKey = "authUser";

  const AuthHiveDbApi({
    required this.database,
    required this.appLogger,
  });

  final DB database;
  final AppLogger appLogger;

  // TODO this needs database
  @override
  Future<void> login(AuthDbApiDTO dto) async {
// TODO this just adds it to the database - but this table can hild multiple options
    await database.addBoxItem(
        boxName: DB.kAuthBox, item: dto, itemId: kAuthBoxKey);
  }

  @override
  Future<void> logout() async {
    await database.deleteBoxItem(boxName: DB.kAuthBox, itemId: kAuthBoxKey);
  }

  // TODO get auth
  @override
  Future<AuthDbApiDTO> getAuth() async {
    final AuthDbApiDTO dto = await database.getBoxItem<AuthDbApiDTO>(
      boxName: DB.kAuthBox,
      itemId: kAuthBoxKey,
    );

    return dto;
  }

  // TODO we could possibly here create some kind of stream to subscribe to changes

  @override
  Stream<AuthDbApiDTO?> observeAuth() {
    final Stream<BoxEvent> stream =
        database.observeBoxItem(boxName: DB.kAuthBox, itemId: kAuthBoxKey);

    final Stream<AuthDbApiDTO?> normalizedStream =
        stream.map((event) => event.value as AuthDbApiDTO?);

    return normalizedStream;
  }
}
