part of '../settings_part.dart';

class UserDataFormWidget extends StatelessWidget {
  final UserModel? userModel;
  final AccountSettingsErrorModel accountSettingsErrorModel;
  final bool isLoading;
  const UserDataFormWidget({
    super.key,
    this.userModel,
    required this.accountSettingsErrorModel,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 14, top: 40),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              context.localization.personalData,
              style: context.theme.textTheme.labelMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: CustomTextField(
            enabled: !isLoading,
            hintText: context.localization.username,
            errorText: (accountSettingsErrorModel.displayName)
                ? null
                : context.localization.displayNameError,
            suffixIcon: Icons.person_outline,
            initialValue: userModel?.displayName,
            onChanged: (changedFieldText) =>
                context.readAccountSettingsBloc.add(
              AccountSettingsEvent.changeData(
                changedFieldName: StringConsts.displayName,
                changedFieldText: changedFieldText,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: CustomDateField(
            enabled: !isLoading,
            hintText: context.localization.birthday,
            errorText: (accountSettingsErrorModel.birthday)
                ? null
                : context.localization.birthdayError,
            initialValue: DateFormat(StringConsts.dateTimeParse).format(
              DateTime.parse(
                userModel?.birthday ?? StringConsts.emptyString,
              ),
            ),
            onChanged: (changedFieldText) =>
                context.readAccountSettingsBloc.add(
              AccountSettingsEvent.changeData(
                changedFieldName: StringConsts.birthday,
                changedFieldText: changedFieldText,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: CustomTextField(
            enabled: !isLoading,
            hintText: context.localization.email,
            errorText: (accountSettingsErrorModel.email)
                ? null
                : context.localization.emailError,
            suffixIcon: Icons.email_outlined,
            initialValue: userModel?.email,
            onChanged: (changedFieldText) =>
                context.readAccountSettingsBloc.add(
              AccountSettingsEvent.changeData(
                changedFieldName: StringConsts.email,
                changedFieldText: changedFieldText,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: CustomTextField(
            enabled: !isLoading,
            hintText: context.localization.phoneNumber,
            errorText: (accountSettingsErrorModel.phone)
                ? null
                : context.localization.phoneError,
            suffixIcon: Icons.phone_outlined,
            initialValue: userModel?.phone,
            onChanged: (changedFieldText) =>
                context.readAccountSettingsBloc.add(
              AccountSettingsEvent.changeData(
                changedFieldName: StringConsts.phone,
                changedFieldText: changedFieldText,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: CustomFilledButton(
                onPressed: () => context.readAccountSettingsBloc.add(
                  const AccountSettingsEvent.save(),
                ),
                text: context.localization.save,
                isLoading: isLoading,
                isDisabled: !(accountSettingsErrorModel.isVerified),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
