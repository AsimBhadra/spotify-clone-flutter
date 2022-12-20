// ignore_for_file: public_member_api_docs, sort_constructors_first
part of widgets;

/// CustomButton Widget
class CustomButton extends StatelessWidget {
  /// CustomButton Constructor
  const CustomButton({
    super.key,
    required this.buttonType,
    required this.text,
    required this.onPressed,
    this.iconUrl,
    this.disabled = false,
  });

  final ButtonType buttonType;
  final String text;
  final VoidCallback onPressed;
  final String? iconUrl;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    if (buttonType == ButtonType.text) {
      return TextButton(
        onPressed: onPressed,
        child: Text(text,),
      );
    } else {
      return SizedBox(
        width: double.infinity,
        height: 45.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              buttonType == ButtonType.primary
                  ? AppColors.greenColor
                  : Colors.transparent,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.sp),
                side: BorderSide(
                  color: buttonType == ButtonType.primary
                      ? Colors.transparent
                      : AppColors.whiteColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 5.w,
              ),
              if (iconUrl != null)
                CustomImage(
                  imgUrl: iconUrl!,
                  imageType: ImageType.asset,
                  height: 20.w,
                  width: 20.w,
                ),
              const Spacer(),
              Text(
                text,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: buttonType == ButtonType.primary
                          ? AppColors.blackColor
                          : AppColors.whiteColor,
                    ),
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    }
  }
}

/// Button types in app
enum ButtonType {
  /// Primary button
  primary,

  /// Outline button
  outline,

  /// Text button
  text,
}
