// part of 'on_boarding_cubit.dart';
part of '../../on_boarding_part.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial() = _OnBoardingInitial;
  const factory OnBoardingState.noInternet() = _OnBoardibgNoInternet;
  const factory OnBoardingState.isAuthorized(
    bool isAuthorized,
  ) = _OnBoardingIsAuthorized;
}
