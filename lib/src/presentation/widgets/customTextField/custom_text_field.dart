// ignore_for_file: public_member_api_docs

part of widgets;

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.onChanged,
    this.isPassword = false,
  });

  // ignore: inference_failure_on_function_return_type
  final Function(String)? onChanged;

  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: avoid_bool_literals_in_conditional_expressions
      obscureText: widget.isPassword ? isObscure : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(isObscure
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,),
                color: AppColors.whiteColor,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              )
            : const SizedBox.shrink(),
      ),
      onChanged: widget.onChanged,
      cursorColor: AppColors.whiteColor,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w500,
          ),
    );
  }
}
