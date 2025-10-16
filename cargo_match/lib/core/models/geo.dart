import 'package:equatable/equatable.dart';

class LatLngPoint extends Equatable {
  final double latitude;
  final double longitude;

  const LatLngPoint({required this.latitude, required this.longitude});

  LatLngPoint copyWith({double? latitude, double? longitude}) {
    return LatLngPoint(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toJson() => {
        'lat': latitude,
        'lng': longitude,
      };

  factory LatLngPoint.fromJson(Map<String, dynamic> json) {
    return LatLngPoint(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lng'] as num).toDouble(),
    );
  }

  @override
  List<Object?> get props => [latitude, longitude];
}
