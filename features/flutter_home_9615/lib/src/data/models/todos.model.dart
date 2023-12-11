import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todos.model.g.dart';

// entities
class Todos extends Equatable {
  final int userIdEntity, idEntity;
  final String titleEntity;
  final bool completedEntity;

  const Todos(
      this.userIdEntity, this.idEntity, this.titleEntity, this.completedEntity);

  @override
  List<Object?> get props => [
        userIdEntity,
        idEntity,
        titleEntity,
        completedEntity,
      ];
}

// model
@JsonSerializable()
class TodosModel extends Todos {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  const TodosModel(this.userId, this.id, this.title, this.completed)
      : super(userId, id, title, completed);
  factory TodosModel.fromJson(Map<String, dynamic> json) =>
      _$TodosModelFromJson(json);
  Map<String, dynamic> toJson() => _$TodosModelToJson(this);
}
