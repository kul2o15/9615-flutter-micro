import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo.model.g.dart';

// entities
class Geo extends Equatable {
  final String latEntity, lngEntity;

  const Geo(this.latEntity, this.lngEntity);

  @override
  List<Object?> get props => [latEntity, lngEntity];
}

// model
@JsonSerializable()
class GeoModel extends Geo {
  final String lng;
  final String lat;

  const GeoModel(this.lat, this.lng) : super(lat, lng);
  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);
  Map<String, dynamic> toJson() => _$GeoModelToJson(this);
}
