import 'package:json_annotation/json_annotation.dart';
part 'book.g.dart';

@JsonSerializable()
class Book {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'author')
  String? author;

  @JsonKey(name: 'category')
  String? category;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'imageURL')
  String? imageURL;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'price')
  int? price;

  Book({
    this.author,
    this.category,
    this.description,
    this.imageURL,
    this.name,
    this.price,
    this.id,
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);
}
