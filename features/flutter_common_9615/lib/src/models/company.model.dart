import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.model.g.dart';

// entities
class Company extends Equatable {
  final String nameEntity, catchPhraseEntity, bsEntity;

  const Company(this.nameEntity, this.catchPhraseEntity, this.bsEntity);

  @override
  List<Object?> get props => [
        nameEntity,
        catchPhraseEntity,
        bsEntity,
      ];
}

// model
@JsonSerializable()
class CompanyModel extends Company {
  final String name;
  final String catchPhrase;
  final String bs;

  const CompanyModel(this.name, this.catchPhrase, this.bs)
      : super(
          name,
          catchPhrase,
          bs,
        );
  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}
