import 'dart:io';

enum DevicePlatforms { IOS, ANDROID, ANY }

extension DeviceNameExtension on DevicePlatforms {
  int get rawValue => Platform.isIOS ? DevicePlatforms.IOS.index : DevicePlatforms.ANDROID.index;
}
