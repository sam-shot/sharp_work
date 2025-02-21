part of '../auth_view.dart';

class Login extends ConsumerWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(authProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back',
          style: context.headlineLarge,
        ),
        SharpSpacing.normal,
        SharpTextField(
          label: 'Email',
          hint: 'Enter email address',
        ),
        SharpSpacing.large,
        SharpTextField(
          label: 'Password',
          hint: 'Enter Password',
          obscureText: true,
        ),
        Spacer(),
        PrimaryButton(
          label: 'Login',
          onTap:model.login,
        ),
      ],
    );
  }
}
