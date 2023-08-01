#include "include/dart_vlc_mac_working/dart_vlc_mac_working_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dart_vlc_mac_working_plugin.h"

void DartVlcMacWorkingPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dart_vlc_mac_working::DartVlcMacWorkingPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
