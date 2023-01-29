import 'package:equatable/equatable.dart';

abstract class Result extends Equatable {
  const Result();
}

class ResultSuccess<T> extends Result {
  const ResultSuccess({
    required this.data,
  });

  final T data;

  @override
  List<Object?> get props => [];
}

class ResultError extends Result {
  const ResultError({
    required this.error,
  });

  final String error;

  @override
  List<Object?> get props => [];
}
