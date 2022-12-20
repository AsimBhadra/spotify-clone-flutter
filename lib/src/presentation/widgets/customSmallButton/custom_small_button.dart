// ignore_for_file: public_member_api_docs, sort_constructors_first
part of widgets;

/// CustomSmallButton Widget
class CustomSmallButton extends StatelessWidget {
  /// CustomSmallButton Constructor
  const CustomSmallButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.iconUrl,
    this.disabled = false,
  });

  final String text;
  final VoidCallback onPressed;
  final String? iconUrl;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            disabled ? AppColors.greyColor : AppColors.whiteColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.sp),
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppColors.blackColor,
                ),
          ),
        ),
      ),
    );
  }
}
