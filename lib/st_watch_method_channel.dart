import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'st_watch_platform_interface.dart';

/// An implementation of [StWatchPlatform] that uses method channels.
class MethodChannelStWatch extends StWatchPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('st_watch');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
