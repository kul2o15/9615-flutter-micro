import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'address.model.dart';
import 'company.model.dart';

part 'user.model.g.dart';

// entities
class User extends Equatable {
  final int idEntity;
  final String nameEntity,
      usernameEntity,
      phoneEntity,
      websiteEntity,
      emailEntity;
  final Address addressEntity;
  final Company companyEntity;

  const User(
      this.idEntity,
      this.nameEntity,
      this.usernameEntity,
      this.phoneEntity,
      this.emailEntity,
      this.websiteEntity,
      this.addressEntity,
      this.companyEntity);

  @override
  List<Object?> get props => [
        idEntity,
        nameEntity,
        usernameEntity,
        emailEntity,
        phoneEntity,
        websiteEntity,
        addressEntity,
        companyEntity,
      ];
}

// model
@JsonSerializable()
class UserModel extends User {
  final int id;
  final String name;
  final CompanyModel company;
  final AddressModel address;
  final String username;
  final String email;
  final String phone;
  final String website;

  const UserModel(this.id, this.name, this.username, this.email, this.phone,
      this.website, this.company, this.address)
      : super(id, name, username, phone, email, website, address, company);
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
