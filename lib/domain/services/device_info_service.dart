import 'dart:io' show Platform;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

class DeviceInfoService {
  static Future<Map<String, dynamic>> getDeviceDetails(BuildContext context) async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    String deviceId = '';
    String deviceName = '';
    String deviceType = '';
    String ipAddress = '';
    String screenSize = '';
    String os = '';
    String timezone = '';
    String language = '';

    try {
      if (kIsWeb) {
        // Web platform
        final webBrowserInfo = await deviceInfoPlugin.webBrowserInfo;
        deviceId = webBrowserInfo.userAgent ?? 'unknown';
        deviceName = webBrowserInfo.browserName.name;
        deviceType = 'Web';
        os = webBrowserInfo.platform ?? 'Web';
      } else {
        if (Platform.isAndroid) {
          final androidInfo = await deviceInfoPlugin.androidInfo;
          deviceId = androidInfo.id ?? 'unknown';
          deviceName = androidInfo.model ?? 'unknown';
          deviceType = 'Android';
          os = androidInfo.version.release ?? 'unknown';
        } else if (Platform.isIOS) {
          final iosInfo = await deviceInfoPlugin.iosInfo;
          deviceId = iosInfo.identifierForVendor ?? 'unknown';
          deviceName = iosInfo.utsname.machine ?? 'unknown';
          deviceType = 'iOS';
          os = iosInfo.systemVersion ?? 'unknown';
        } else if (Platform.isWindows) {
          final windowsInfo = await deviceInfoPlugin.windowsInfo;
          deviceId = windowsInfo.deviceId ?? 'unknown';
          deviceName = windowsInfo.computerName ?? 'unknown';
          deviceType = 'Windows';
          os = windowsInfo.productName ?? 'unknown';
        } else if (Platform.isMacOS) {
          final macInfo = await deviceInfoPlugin.macOsInfo;
          deviceId = macInfo.systemGUID ?? 'unknown';
          deviceName = macInfo.model ?? 'unknown';
          deviceType = 'MacOS';
          os = macInfo.osRelease ?? 'unknown';
        } else if (Platform.isLinux) {
          final linuxInfo = await deviceInfoPlugin.linuxInfo;
          deviceId = linuxInfo.machineId ?? 'unknown';
          deviceName = linuxInfo.name ?? 'unknown';
          deviceType = 'Linux';
          os = linuxInfo.version ?? 'unknown';
        }
      }

      // Screen size
      final width = MediaQuery.of(context).size.width.toInt();
      final height = MediaQuery.of(context).size.height.toInt();
      screenSize = "${width}X${height}";

      // IP Address (private IP or fallback)
      ipAddress = await _getIpAddress();

      // Timezone
      final now = DateTime.now();
      final localTimeZone = now.timeZoneName;
      timezone = localTimeZone;

      // Language
      language = ui.PlatformDispatcher.instance.locale.languageCode;
    } catch (e) {
      debugPrint('Error getting device info: $e');
    }

    return {
      "deviceId": deviceId,
      "deviceName": deviceName,
      "deviceType": deviceType,
      "ipAddress": ipAddress,
      "screenSize": screenSize,
      "os": os,
      "timezone": timezone,
      "language": language,
    };
  }

  static Future<String> _getIpAddress() async {
    try {
      final response = await http.get(Uri.parse('https://api.ipify.org?format=json'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['ip'] ?? 'unknown';
      } else {
        return 'unknown';
      }
    } catch (e) {
      return 'unknown';
    }
  }
}
