import 'package:flutter_test/flutter_test.dart';
import 'package:st_watch/st_watch.dart';
import 'package:st_watch/st_watch_platform_interface.dart';
import 'package:st_watch/st_watch_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStWatchPlatform
    with MockPlatformInterfaceMixin
    implements StWatchPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StWatchPlatform initialPlatform = StWatchPlatform.instance;

  test('$MethodChannelStWatch is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStWatch>());
  });

  test('getPlatformVersion', () async {
    StWatch stWatchPlugin = StWatch();
    MockStWatchPlatform fakePlatform = MockStWatchPlatform();
    StWatchPlatform.instance = fakePlatform;

    expect(await stWatchPlugin.getPlatformVersion(), '42');
  });
}
