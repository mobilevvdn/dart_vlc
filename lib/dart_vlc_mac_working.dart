
import 'dart_vlc_mac_working_platform_interface.dart';

class DartVlcMacWorking {
  Future<String?> getPlatformVersion() {
    return DartVlcMacWorkingPlatform.instance.getPlatformVersion();
  }
}
