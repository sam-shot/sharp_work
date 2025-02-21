import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sharp_work/ui/ui.dart';

final homeProvider = ChangeNotifierProvider<HomeViewModel>((ref) {
  return HomeViewModel(ref);
});

class HomeViewModel extends AppViewModel {
  final Ref ref;
  HomeViewModel(this.ref);

  List<String> get jobTypes => [
        'New Job',
        'Part Time',
        'Full Time',
        'Remote',
        'Internship',
      ];
}
