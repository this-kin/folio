import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/providers/notifier/app_state_notifier.dart';

final appStateProvider = StateNotifierProvider<AppStateNotifier, bool?>((ref) {
  return AppStateNotifier(ref);
});
