import 'package:equatable/equatable.dart';
import '../enums/job_status.dart';
import '../enums/vehicle_type.dart';
import 'geo.dart';

class Job extends Equatable {
  final String id;
  final String supplierId;
  final String? assignedDriverId;
  final JobStatus status;
  final String cargoType;
  final String description;
  final double weightKg;
  final double? volumeM3;
  final VehicleType requiredVehicleType;
  final LatLngPoint pickup;
  final LatLngPoint dropoff;
  final DateTime createdAt;

  const Job({
    required this.id,
    required this.supplierId,
    this.assignedDriverId,
    required this.status,
    required this.cargoType,
    required this.description,
    required this.weightKg,
    this.volumeM3,
    required this.requiredVehicleType,
    required this.pickup,
    required this.dropoff,
    required this.createdAt,
  });

  Job copyWith({
    String? id,
    String? supplierId,
    String? assignedDriverId,
    JobStatus? status,
    String? cargoType,
    String? description,
    double? weightKg,
    double? volumeM3,
    VehicleType? requiredVehicleType,
    LatLngPoint? pickup,
    LatLngPoint? dropoff,
    DateTime? createdAt,
  }) {
    return Job(
      id: id ?? this.id,
      supplierId: supplierId ?? this.supplierId,
      assignedDriverId: assignedDriverId ?? this.assignedDriverId,
      status: status ?? this.status,
      cargoType: cargoType ?? this.cargoType,
      description: description ?? this.description,
      weightKg: weightKg ?? this.weightKg,
      volumeM3: volumeM3 ?? this.volumeM3,
      requiredVehicleType: requiredVehicleType ?? this.requiredVehicleType,
      pickup: pickup ?? this.pickup,
      dropoff: dropoff ?? this.dropoff,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'supplierId': supplierId,
      'assignedDriverId': assignedDriverId,
      'status': status.name,
      'cargoType': cargoType,
      'description': description,
      'weightKg': weightKg,
      'volumeM3': volumeM3,
      'requiredVehicleType': requiredVehicleType.name,
      'pickup': pickup.toJson(),
      'dropoff': dropoff.toJson(),
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['id'] as String,
      supplierId: json['supplierId'] as String,
      assignedDriverId: json['assignedDriverId'] as String?,
      status: JobStatus.values.firstWhere((e) => e.name == json['status']),
      cargoType: json['cargoType'] as String,
      description: json['description'] as String,
      weightKg: (json['weightKg'] as num).toDouble(),
      volumeM3: (json['volumeM3'] as num?)?.toDouble(),
      requiredVehicleType: VehicleType.values
          .firstWhere((e) => e.name == json['requiredVehicleType']),
      pickup: LatLngPoint.fromJson(json['pickup'] as Map<String, dynamic>),
      dropoff: LatLngPoint.fromJson(json['dropoff'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  @override
  List<Object?> get props => [
        id,
        supplierId,
        assignedDriverId,
        status,
        cargoType,
        description,
        weightKg,
        volumeM3,
        requiredVehicleType,
        pickup,
        dropoff,
        createdAt,
      ];
}
