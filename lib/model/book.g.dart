// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      author: json['author'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      imageURL: json['imageURL'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'category': instance.category,
      'description': instance.description,
      'imageURL': instance.imageURL,
      'name': instance.name,
      'price': instance.price,
    };
