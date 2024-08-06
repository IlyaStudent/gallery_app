part of '../../on_boarding_part.dart';

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:gallery_app/features/on_boarding/on_boarding_part.dart';

// part 'on_boarding_state.dart';
// part 'on_boarding_cubit.freezed.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit({
    required this.onBoardinRepository,
  }) : super(
          const OnBoardingState.initial(),
        );

  final OnBoardinRepository onBoardinRepository;

  void getUser() async {
    try {
      await onBoardinRepository.getCurrentUser();
      emit(
        const OnBoardingState.isAuthorized(true),
      );
    } on dio.DioException catch (error) {
      if (error.message == StringConsts.noInternet) {
        emit(
          const OnBoardingState.noInternet(),
        );
      }
      emit(
        const OnBoardingState.isAuthorized(false),
      );
    }
  }
}
