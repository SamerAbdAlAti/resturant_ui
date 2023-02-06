part of 'app_cubit.dart';

class AppState {
  final int tabBarCurrentIndex;

  AppState({
    this.tabBarCurrentIndex = 0,
  });

  AppState copyWith({
    int? tabBarCurrentIndex,
  }) {
    return AppState(
      tabBarCurrentIndex: tabBarCurrentIndex ?? this.tabBarCurrentIndex,
    );
  }
}
