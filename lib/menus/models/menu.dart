import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
// import 'package:uuid/uuid.dart';

part 'menu.g.dart';

@immutable
@JsonSerializable()
class Menu extends Equatable {
  const Menu({
    required this.id,
    required this.title,
    this.description = '',
    required this.price,
  });

  final int id;
  final String title;
  final String description;
  final double price;

  Menu copyWith({
    int? id,
    String? title,
    String? description,
    double? price,
  }) {
    return Menu(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  @override
  List<Object> get props => [id, title, description, price];
}
