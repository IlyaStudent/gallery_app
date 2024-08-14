part of '../autentithication_part.dart';

class CustomPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String? errorText;
  final String hintText;
  final bool enabled;
  final bool isError;
  final ValueChanged<String>? onChanged;

  const CustomPasswordField({
    super.key,
    this.errorText,
    required this.hintText,
    this.enabled = true,
    this.isError = false,
    this.controller,
    this.onChanged,
  });

  static final greyBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.grey,
    ),
  );
  static final blackBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.black,
    ),
  );

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isObscure = true;

  void _changeVisibility() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      obscureText: isObscure,
      enabled: widget.enabled,
      cursorColor: AppColors.black,
      style: context.theme.textTheme.labelMedium,
      decoration: InputDecoration(
        helperText: StringConsts.emptyString,
        helperStyle: context.theme.textTheme.bodySmall?.copyWith(
          color: AppColors.errorRed,
          height: 0.1,
        ),
        suffixIcon: widget.isError
            ? const Icon(
                Icons.warning,
                size: 24,
                color: AppColors.errorRed,
              )
            : IconButton(
                icon: Icon(
                  isObscure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 24,
                  color: AppColors.grey,
                ),
                onPressed: _changeVisibility,
              ),
        hintText: widget.hintText,
        hintStyle: widget.enabled
            ? context.theme.textTheme.labelMedium?.copyWith(
                color: AppColors.grey,
              )
            : context.theme.textTheme.labelMedium?.copyWith(
                color: AppColors.greyLight,
              ),
        errorMaxLines: 1,
        errorText: widget.errorText,
        errorStyle: context.theme.textTheme.bodySmall?.copyWith(
          color: AppColors.errorRed,
          height: 0.1,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 1,
          horizontal: 12,
        ),
        border: CustomPasswordField.greyBorder,
        focusedBorder: CustomPasswordField.blackBorder,
        errorBorder: CustomPasswordField.greyBorder,
        disabledBorder: CustomPasswordField.greyBorder,
      ),
    );
  }
}
