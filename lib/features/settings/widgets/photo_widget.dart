part of '../settings_part.dart';

class PhotoWidget extends StatelessWidget {
  final Uint8List? userPhoto;
  const PhotoWidget({super.key, this.userPhoto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.readAccountSettingsBloc.add(
        const AccountSettingsEvent.changePhoto(),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.greyLight,
          ),
          borderRadius: BorderRadius.circular(80.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: (userPhoto != null)
                        ? Image.memory(
                            userPhoto!,
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            StringConsts.logoImage,
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                  )),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 25,
                  width: 90,
                  decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.7),
                  ),
                  child: Text(
                    context.localization.edit,
                    textAlign: TextAlign.center,
                    style: context.theme.textTheme.bodySmall
                        ?.copyWith(color: AppColors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
