import 'package:equatable/equatable.dart';

class ThemeModeCubitState extends Equatable {
  const ThemeModeCubitState();

  @override
  List<Object?> get props => [];
}

class ThemeModeCubitStateDark extends ThemeModeCubitState {}

class ThemeModeCubitStateLight extends ThemeModeCubitState {}

class ThemeModeCubitStateSystem extends ThemeModeCubitState {}
