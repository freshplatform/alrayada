import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String email,
    required UserInfo info,
    required String userId,
    required String? pictureUrl,
    required bool isAccountActivated,
    required bool isEmailVerified,
    required UserRole role,
    required UserDeviceNotificationsToken deviceNotificationsToken,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

enum UserRole {
  @JsonValue('Admin')
  admin,
  @JsonValue('User')
  user
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String labOwnerPhoneNumber,
    required String labPhoneNumber,
    required String labName,
    required String labOwnerName,
    required IraqGovernorate city,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, Object?> json) =>
      _$UserInfoFromJson(json);
}

enum IraqGovernorate {
  @JsonValue('Baghdad')
  baghdad,

  @JsonValue('Basra')
  basra,

  @JsonValue('Maysan')
  maysan,

  @JsonValue('DhiQar')
  dhiQar,

  @JsonValue('Diyala')
  diyala,

  @JsonValue('Karbala')
  karbala,

  @JsonValue('Kirkuk')
  kirkuk,

  @JsonValue('Najaf')
  najaf,

  @JsonValue('Nineveh')
  nineveh,

  @JsonValue('Wasit')
  wasit,

  @JsonValue('Anbar')
  anbar,

  @JsonValue('SalahAlDin')
  salahAlDin,

  @JsonValue('Babil')
  babil,

  @JsonValue('Babylon')
  babylon,

  @JsonValue('AlMuthanna')
  alMuthanna,

  @JsonValue('Al-Qadisiyyah')
  alQadisiyyah,

  @JsonValue('ThiQar')
  thiQar;

  static IraqGovernorate fromString(String value) {
    return IraqGovernorate.values.firstWhere(
      (element) => value.toLowerCase() == element.name.toLowerCase(),
      orElse: () => IraqGovernorate.defaultCity,
    );
  }

  static IraqGovernorate get defaultCity => IraqGovernorate.baghdad;
}

@freezed
class UserDeviceNotificationsToken with _$UserDeviceNotificationsToken {
  const factory UserDeviceNotificationsToken({
    @Default('') String firebase,
    @Default('') oneSignal,
  }) = _UserDeviceNotificationsToken;

  factory UserDeviceNotificationsToken.fromJson(Map<String, Object?> json) =>
      _$UserDeviceNotificationsTokenFromJson(json);
}
