import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'st_watch_method_channel.dart';

abstract class StWatchPlatform extends PlatformInterface {
  /// Constructs a StWatchPlatform.
  StWatchPlatform() : super(token: _token);

  static final Object _token = Object();

  static StWatchPlatform _instance = MethodChannelStWatch();

  /// The default instance of [StWatchPlatform] to use.
  ///
  /// Defaults to [MethodChannelStWatch].
  static StWatchPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StWatchPlatform] when
  /// they register themselves.
  static set instance(StWatchPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
