part of screens;

/// CreateAccountScreen Widget
class CreateAccountScreen extends StatefulWidget {
  /// CreateAccountScreen Constructor
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const HeroIcon(HeroIcons.arrowLeft),
          onPressed: () {
            context.go('/welcome');
          },
        ),
        title: const Text(
          'Create account',
        ),
        centerTitle: true,
      ),
      body: PageView(
        children: const [
          EmailWidget(),
          PasswordWidget(),
          DOBWidget(),
          GenderWidget(),
          ConfirmationWidget(),
        ],
      ),
    );
  }
}
