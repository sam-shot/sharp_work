import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sharp_work/core/core.dart';
import 'package:sharp_work/ui/ui.dart';

final authProvider = ChangeNotifierProvider<AuthViewModel>((ref) {
  return AuthViewModel(ref);
});

class AuthViewModel extends AppViewModel {
  final Ref ref;
  AuthViewModel(this.ref);

  void login() {
    router.push(HomeRoute());
  }
}
