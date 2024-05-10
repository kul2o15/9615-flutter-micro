import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'geo.model.dart';

part 'address.model.g.dart';

// entities
class Address extends Equatable {
  final String streetEntity, suiteEntity, zipcodeEntity, cityEntity;
  final Geo geoEntity;

  const Address(
    this.streetEntity,
    this.cityEntity,
    this.suiteEntity,
    this.zipcodeEntity,
    this.geoEntity,
  );

  @override
  List<Object?> get props => [
        streetEntity,
        suiteEntity,
        zipcodeEntity,
        cityEntity,
        geoEntity,
      ];
}

// model
@JsonSerializable()
class AddressModel extends Address {
  final String street;
  final GeoModel geo;
  final String suite;
  final String city;
  final String zipcode;

  const AddressModel(this.street, this.suite, this.city, this.zipcode, this.geo)
      : super(
          street,
          suite,
          city,
          zipcode,
          geo,
        );
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
