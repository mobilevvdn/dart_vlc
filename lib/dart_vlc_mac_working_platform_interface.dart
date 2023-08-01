import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dart_vlc_mac_working_method_channel.dart';

abstract class DartVlcMacWorkingPlatform extends PlatformInterface {
  /// Constructs a DartVlcMacWorkingPlatform.
  DartVlcMacWorkingPlatform() : super(token: _token);

  static final Object _token = Object();

  static DartVlcMacWorkingPlatform _instance = MethodChannelDartVlcMacWorking();

  /// The default instance of [DartVlcMacWorkingPlatform] to use.
  ///
  /// Defaults to [MethodChannelDartVlcMacWorking].
  static DartVlcMacWorkingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DartVlcMacWorkingPlatform] when
  /// they register themselves.
  static set instance(DartVlcMacWorkingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
