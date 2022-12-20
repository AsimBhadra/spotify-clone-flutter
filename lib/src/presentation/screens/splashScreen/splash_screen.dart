part of screens;

/// SplashScreen is the first screen that is shown to the user.
class SplashScreen extends StatelessWidget {
  /// SplashScreen Constructor
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomImage(
          imgUrl: 'assets/icons/main-icon.png',
          imageType: ImageType.asset,
        ),
      ),
    );
  }
}
