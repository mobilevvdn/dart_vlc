#ifndef FLUTTER_PLUGIN_DART_VLC_MAC_WORKING_PLUGIN_H_
#define FLUTTER_PLUGIN_DART_VLC_MAC_WORKING_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace dart_vlc_mac_working {

class DartVlcMacWorkingPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DartVlcMacWorkingPlugin();

  virtual ~DartVlcMacWorkingPlugin();

  // Disallow copy and assign.
  DartVlcMacWorkingPlugin(const DartVlcMacWorkingPlugin&) = delete;
  DartVlcMacWorkingPlugin& operator=(const DartVlcMacWorkingPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace dart_vlc_mac_working

#endif  // FLUTTER_PLUGIN_DART_VLC_MAC_WORKING_PLUGIN_H_
