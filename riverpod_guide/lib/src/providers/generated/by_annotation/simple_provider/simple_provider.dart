import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "simple_provider.g.dart";

@riverpod
Dio dio(DioRef ref) {
  return Dio();
}
