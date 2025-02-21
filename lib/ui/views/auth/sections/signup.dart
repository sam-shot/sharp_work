part of '../auth_view.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create an account',
          style: context.headlineLarge,
        ),
        SharpSpacing.normal,
        SharpTextField(
          label: 'Name',
          hint: 'Enter your name',
        ),
        SharpSpacing.large,
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
          label: 'Signup',
          onTap: () {},
        ),
      ],
    );
  }
}
