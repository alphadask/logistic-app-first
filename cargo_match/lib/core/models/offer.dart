import 'package:equatable/equatable.dart';
import '../enums/offer_status.dart';

class Offer extends Equatable {
  final String id;
  final String jobId;
  final String driverId;
  final double price;
  final OfferStatus status;
  final DateTime createdAt;

  const Offer({
    required this.id,
    required this.jobId,
    required this.driverId,
    required this.price,
    required this.status,
    required this.createdAt,
  });

  Offer copyWith({
    String? id,
    String? jobId,
    String? driverId,
    double? price,
    OfferStatus? status,
    DateTime? createdAt,
  }) {
    return Offer(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      driverId: driverId ?? this.driverId,
      price: price ?? this.price,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'jobId': jobId,
      'driverId': driverId,
      'price': price,
      'status': status.name,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      id: json['id'] as String,
      jobId: json['jobId'] as String,
      driverId: json['driverId'] as String,
      price: (json['price'] as num).toDouble(),
      status: OfferStatus.values.firstWhere((e) => e.name == json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  @override
  List<Object?> get props => [id, jobId, driverId, price, status, createdAt];
}
