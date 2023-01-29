import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part "dto.g.dart";

@JsonSerializable()
class UserDTO extends Equatable {
  const UserDTO({
    required this.id,
    required this.email,
    required this.username,
  });

  final String id;
  final String email;
  final String username;

  @override
  List<Object?> get props => [
        id,
        email,
        username,
      ];

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}
