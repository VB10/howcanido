import 'device_version_enum.dart';

enum QueryValues { VERSION, PLATFORM }

extension QueryValuesExtension on QueryValues {
  MapEntry<String, dynamic> versionQuery(String val) => MapEntry('version', "$val");
  MapEntry<String, dynamic> get platformQuery => MapEntry('platform', DevicePlatforms.ANY.rawValue);
}
