part of '../profile_part.dart';

class UserDataWidget extends StatelessWidget {
  final UserModel? userModel;
  final Uint8List? userPhoto;
  const UserDataWidget({super.key, required this.userModel, this.userPhoto});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.greyLight,
            ),
            borderRadius: BorderRadius.circular(80.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80.0),
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
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Text(
                userModel?.displayName ?? context.localization.name,
                style: context.theme.textTheme.headlineSmall,
              ),
              Text(
                DateFormat(StringConsts.dateTimeParse).format(
                  DateTime.parse(
                    userModel?.birthday ?? StringConsts.emptyDate,
                  ),
                ),
                style: context.theme.textTheme.labelMedium?.copyWith(
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
