part of '../auth_view.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          onTap: () {},
        ),
      ],
    );
  }
}
