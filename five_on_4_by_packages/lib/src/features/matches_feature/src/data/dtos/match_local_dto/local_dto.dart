import 'package:hive/hive.dart';

part "local_dto.g.dart";

@HiveType(typeId: 2)
class MatchLocalDTO {
  const MatchLocalDTO({
    required this.id,
    required this.name,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;
}
