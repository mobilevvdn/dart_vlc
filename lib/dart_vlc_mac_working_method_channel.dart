import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dart_vlc_mac_working_platform_interface.dart';

/// An implementation of [DartVlcMacWorkingPlatform] that uses method channels.
class MethodChannelDartVlcMacWorking extends DartVlcMacWorkingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dart_vlc_mac_working');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
