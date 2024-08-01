part of '../autentithication_part.dart';

class CustomDateField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final String hintText;
  final bool enabled;
  final bool isError;

  const CustomDateField({
    super.key,
    this.errorText,
    required this.hintText,
    this.enabled = true,
    this.isError = false,
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
  State<CustomDateField> createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  final TextEditingController controller = TextEditingController();

  Future<void> _chooseData() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (pickedDate != null) {
      setState(() {
        controller.text =
            "${pickedDate.day}.${pickedDate.month}.${pickedDate.year}";
        widget.onChanged!(controller.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: controller,
      enabled: widget.enabled,
      cursorColor: AppColors.black,
      style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        helperText: "",
        suffixIcon: widget.isError
            ? const Icon(
                Icons.warning,
                size: 24,
                color: AppColors.errorRed,
              )
            : IconButton(
                icon: const Icon(
                  Icons.calendar_today,
                  size: 24,
                  color: AppColors.grey,
                ),
                onPressed: _chooseData,
              ),
        hintText: widget.hintText,
        hintStyle: widget.enabled
            ? Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.grey,
                )
            : Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.greyLight,
                ),
        errorMaxLines: 1,
        errorText: widget.errorText,
        errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.errorRed,
            ),
        contentPadding: const EdgeInsets.all(12),
        border: CustomPasswordField.greyBorder,
        focusedBorder: CustomPasswordField.blackBorder,
        errorBorder: CustomPasswordField.greyBorder,
        disabledBorder: CustomPasswordField.greyBorder,
      ),
    );
  }
}
