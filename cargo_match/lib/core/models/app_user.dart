import 'package:equatable/equatable.dart';
import '../enums/user_role.dart';
import '../enums/vehicle_type.dart';

class AppUser extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String phone;
  final UserRole role;
  final bool isApproved;

  // Driver-only fields
  final String? plate;
  final String? licenseNumber;
  final String? weighbridgeInfo;
  final String? vehicleBrand;
  final String? vehicleModel;
  final int? vehicleYear; // must be >= 2000
  final VehicleType? vehicleType;

  // Supplier-only fields
  final String? companyName;
  final String? companyTaxNumber;
  final String? cargoDescription;

  const AppUser({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.role,
    required this.isApproved,
    this.plate,
    this.licenseNumber,
    this.weighbridgeInfo,
    this.vehicleBrand,
    this.vehicleModel,
    this.vehicleYear,
    this.vehicleType,
    this.companyName,
    this.companyTaxNumber,
    this.cargoDescription,
  });

  AppUser copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? phone,
    UserRole? role,
    bool? isApproved,
    String? plate,
    String? licenseNumber,
    String? weighbridgeInfo,
    String? vehicleBrand,
    String? vehicleModel,
    int? vehicleYear,
    VehicleType? vehicleType,
    String? companyName,
    String? companyTaxNumber,
    String? cargoDescription,
  }) {
    return AppUser(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      isApproved: isApproved ?? this.isApproved,
      plate: plate ?? this.plate,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      weighbridgeInfo: weighbridgeInfo ?? this.weighbridgeInfo,
      vehicleBrand: vehicleBrand ?? this.vehicleBrand,
      vehicleModel: vehicleModel ?? this.vehicleModel,
      vehicleYear: vehicleYear ?? this.vehicleYear,
      vehicleType: vehicleType ?? this.vehicleType,
      companyName: companyName ?? this.companyName,
      companyTaxNumber: companyTaxNumber ?? this.companyTaxNumber,
      cargoDescription: cargoDescription ?? this.cargoDescription,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'role': role.name,
      'isApproved': isApproved,
      'plate': plate,
      'licenseNumber': licenseNumber,
      'weighbridgeInfo': weighbridgeInfo,
      'vehicleBrand': vehicleBrand,
      'vehicleModel': vehicleModel,
      'vehicleYear': vehicleYear,
      'vehicleType': vehicleType?.name,
      'companyName': companyName,
      'companyTaxNumber': companyTaxNumber,
      'cargoDescription': cargoDescription,
    };
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phone: json['phone'] as String,
      role: UserRole.values.firstWhere((e) => e.name == json['role']),
      isApproved: json['isApproved'] as bool? ?? false,
      plate: json['plate'] as String?,
      licenseNumber: json['licenseNumber'] as String?,
      weighbridgeInfo: json['weighbridgeInfo'] as String?,
      vehicleBrand: json['vehicleBrand'] as String?,
      vehicleModel: json['vehicleModel'] as String?,
      vehicleYear: json['vehicleYear'] as int?,
      vehicleType: (json['vehicleType'] as String?) != null
          ? VehicleType.values.firstWhere((e) => e.name == json['vehicleType'])
          : null,
      companyName: json['companyName'] as String?,
      companyTaxNumber: json['companyTaxNumber'] as String?,
      cargoDescription: json['cargoDescription'] as String?,
    );
  }

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        phone,
        role,
        isApproved,
        plate,
        licenseNumber,
        weighbridgeInfo,
        vehicleBrand,
        vehicleModel,
        vehicleYear,
        vehicleType,
        companyName,
        companyTaxNumber,
        cargoDescription,
      ];
}
