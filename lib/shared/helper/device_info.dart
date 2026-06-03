import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb, defaultTargetPlatform, TargetPlatform;

/// Thông tin thiết bị gửi kèm khi login (google-login, login...).
class DeviceInfoPayload {
  const DeviceInfoPayload({
    required this.deviceId,
    required this.deviceName,
    required this.deviceType,
  });

  final String deviceId;
  final String deviceName;
  final String deviceType;

  Map<String, String> toJson() => {
        'device_id': deviceId,
        'device_name': deviceName,
        'device_type': deviceType,
      };
}

/// Giá trị device_type backend chấp nhận: mobile | tablet | laptop | desktop.
/// device_info_plus không có API "phone vs tablet", nên dùng heuristic theo tên máy.
const _deviceTypeMobile = 'mobile';
const _deviceTypeTablet = 'tablet';
const _deviceTypeDesktop = 'desktop';

/// Chuỗi thường gặp trong tên model/device của tablet (Android: Tab, Pad; iOS: iPad).
bool _looksLikeTablet(String model, [String device = '', String product = '']) {
  final lower = '${model}_${device}_$product'.toLowerCase();
  return lower.contains('tab') ||
      lower.contains('pad') ||
      lower.contains('tablet') ||
      lower.contains('ipad');
}

/// Lấy thông tin thiết bị (device_id, device_name, device_type) để gửi lên API.
///
/// Đăng ký qua [RegisterModule] (injectable) để tránh inject [DeviceInfoPlugin].
class DeviceInfo {
  DeviceInfo([DeviceInfoPlugin? plugin])
      : _plugin = plugin ?? DeviceInfoPlugin();

  final DeviceInfoPlugin _plugin;

  /// Lấy payload thông tin thiết bị (dùng cho body google-login, login...).
  Future<DeviceInfoPayload> getDeviceInfo() async {
    if (kIsWeb) {
      return const DeviceInfoPayload(
        deviceId: 'web',
        deviceName: 'Web',
        deviceType: _deviceTypeDesktop,
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _getAndroidDeviceInfo();
      case TargetPlatform.iOS:
        return _getIosDeviceInfo();
      default:
        return const DeviceInfoPayload(
          deviceId: 'unknown',
          deviceName: 'Unknown',
          deviceType: 'desktop',
        );
    }
  }

  Future<DeviceInfoPayload> _getAndroidDeviceInfo() async {
    try {
      final info = await _plugin.androidInfo;
      final brand = info.brand;
      final model = info.model;
      final device = info.device;
      final fingerprint = info.fingerprint;
      final deviceId = fingerprint.isNotEmpty
          ? fingerprint.replaceAll(RegExp(r'[^a-zA-Z0-9_.-]'), '_')
          : '${brand}_${model}_$device'
              .replaceAll(RegExp(r'[^a-zA-Z0-9_-]'), '_');
      final deviceName =
          '$brand $model'.trim().isNotEmpty ? '$brand $model'.trim() : model;
      final deviceType = _looksLikeTablet(model, device, info.product)
          ? _deviceTypeTablet
          : _deviceTypeMobile;
      return DeviceInfoPayload(
        deviceId: deviceId,
        deviceName: deviceName,
        deviceType: deviceType,
      );
    } catch (_) {
      return const DeviceInfoPayload(
        deviceId: 'android_unknown',
        deviceName: 'Android',
        deviceType: _deviceTypeMobile,
      );
    }
  }

  Future<DeviceInfoPayload> _getIosDeviceInfo() async {
    try {
      final info = await _plugin.iosInfo;
      final identifier = info.identifierForVendor ?? 'ios_${info.model}';
      final name = info.name;
      final model = info.model;
      final deviceName =
          name.isNotEmpty ? name : (model.isNotEmpty ? model : 'iPhone');
      final deviceType = _looksLikeTablet(model) ? _deviceTypeTablet : _deviceTypeMobile;
      return DeviceInfoPayload(
        deviceId: identifier,
        deviceName: deviceName,
        deviceType: deviceType,
      );
    } catch (_) {
      return const DeviceInfoPayload(
        deviceId: 'ios_unknown',
        deviceName: 'iPhone',
        deviceType: _deviceTypeMobile,
      );
    }
  }
}
