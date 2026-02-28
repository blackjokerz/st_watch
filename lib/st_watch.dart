
import 'st_watch_platform_interface.dart';

class StWatch {
  Future<String?> getPlatformVersion() {
    return StWatchPlatform.instance.getPlatformVersion();
  }
}
