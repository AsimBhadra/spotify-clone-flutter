part of screens;

/// This class is used to create a login screen.
class LoginScreen extends StatelessWidget {
  /// LoginScreen Constructor
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.9],
            colors: [
              AppColors.blackGradient,
              AppColors.blackColor,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
              ),
              CustomImage(
                imgUrl: 'assets/icons/white-icon.png',
                imageType: ImageType.asset,
                height: 80.w,
                width: 80.w,
              ),
              SizedBox(
                height: 80.h,
              ),
              Text(
                'Millions of songs.\nFree on Spotify.',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60.h,
              ),
              CustomButton(
                buttonType: ButtonType.primary,
                text: 'Sign up free',
                onPressed: () {},
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomButton(
                buttonType: ButtonType.outline,
                text: 'Continue with Google',
                iconUrl: 'assets/icons/google.png',
                onPressed: () {},
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomButton(
                buttonType: ButtonType.outline,
                text: 'Continue with Facebook',
                iconUrl: 'assets/icons/facebook.png',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                buttonType: ButtonType.text,
                text: 'Log in',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
