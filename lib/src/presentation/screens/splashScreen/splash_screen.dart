part of screens;

/// SplashScreen is the first screen that is shown to the user.
class SplashScreen extends StatefulWidget {
  /// SplashScreen Constructor
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.go('/login');
    });
  }

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
