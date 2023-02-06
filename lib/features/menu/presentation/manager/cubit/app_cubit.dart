import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  static AppCubit get(context) => BlocProvider.of(context);

  Future<void> currentIndexChange({required int index}) async {
    emit(state.copyWith(tabBarCurrentIndex: index));
  }
}
