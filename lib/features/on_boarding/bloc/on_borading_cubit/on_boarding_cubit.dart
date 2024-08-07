part of '../../on_boarding_part.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit({
    required this.userRepository,
  }) : super(
          const OnBoardingState.initial(),
        );

  final UserRepository userRepository;

  void getUser() async {
    try {
      await userRepository.getCurrentUser();
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
