part of '../photos_part.dart';

class PhotoFormWidget extends StatelessWidget {
  final bool? nameCorrect;
  final bool? isNew;
  final bool? isPopular;
  final bool isLoading;
  final bool isValid;

  const PhotoFormWidget({
    super.key,
    this.nameCorrect,
    this.isNew = false,
    required this.isLoading,
    required this.isValid,
    this.isPopular = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            enabled: !isLoading,
            hintText: context.localization.name,
            errorText: (nameCorrect != null && !nameCorrect!)
                ? context.localization.photoPostNameError
                : null,
            onChanged: (text) => context.readPostPhotoBloc.add(
              _PhotoPostChange(
                chnagedField: StringConsts.name,
                changedValue: text,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomTextField(
              enabled: !isLoading,
              hintText: context.localization.description,
              minLines: 5,
              onChanged: (text) => context.readPostPhotoBloc.add(
                _PhotoPostChange(
                  chnagedField: StringConsts.description,
                  changedValue: text,
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: isNew ?? false,
                side: const BorderSide(
                  color: AppColors.grey,
                  width: 2,
                ),
                activeColor: AppColors.main,
                onChanged: (isLoading)
                    ? null
                    : (bool? value) => context.readPostPhotoBloc.add(
                          _PhotoPostChange(
                            chnagedField: StringConsts.isNewString,
                            changedValue: value,
                          ),
                        ),
              ),
              Text(
                context.localization.newText,
                style: context.theme.textTheme.displayLarge,
              ),
              const SizedBox(
                width: 10,
              ),
              Checkbox(
                value: isPopular ?? false,
                side: const BorderSide(
                  color: AppColors.grey,
                  width: 2,
                ),
                activeColor: AppColors.main,
                onChanged: (isLoading)
                    ? null
                    : (bool? value) => context.readPostPhotoBloc.add(
                          _PhotoPostChange(
                            chnagedField: StringConsts.popular,
                            changedValue: value,
                          ),
                        ),
              ),
              Text(
                context.localization.popular,
                style: context.theme.textTheme.displayLarge,
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: CustomFilledButton(
              onPressed: () => context.readPostPhotoBloc.add(
                const _PhotoPostPost(),
              ),
              text: "Add",
              isLoading: isLoading,
              isDisabled: !isValid,
            ),
          ),
        ],
      ),
    );
  }
}
