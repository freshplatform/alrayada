// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      shortDescription: json['shortDescription'] as String,
      originalPrice: (json['originalPrice'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      categories:
          (json['categories'] as List<dynamic>).map((e) => e as String).toSet(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'originalPrice': instance.originalPrice,
      'discountPercentage': instance.discountPercentage,
      'imageUrls': instance.imageUrls,
      'categories': instance.categories.toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'isFavorite': instance.isFavorite,
    };

_$_ProductRequest _$$_ProductRequestFromJson(Map<String, dynamic> json) =>
    _$_ProductRequest(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      shortDescription: json['shortDescription'] as String? ?? '',
      originalPrice: (json['originalPrice'] as num?)?.toDouble() ?? 0,
      discountPercentage:
          (json['discountPercentage'] as num?)?.toDouble() ?? 0.0,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductRequestToJson(_$_ProductRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'originalPrice': instance.originalPrice,
      'discountPercentage': instance.discountPercentage,
      'categories': instance.categories,
    };
