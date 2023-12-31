// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_product_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<ProductCategory>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String shortDescription,
      List<String> imageUrls,
      String? parent,
      DateTime createdAt,
      List<ProductCategory>? children});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? imageUrls = null,
    Object? parent = freezed,
    Object? createdAt = null,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCategoryCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$_ProductCategoryCopyWith(
          _$_ProductCategory value, $Res Function(_$_ProductCategory) then) =
      __$$_ProductCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String shortDescription,
      List<String> imageUrls,
      String? parent,
      DateTime createdAt,
      List<ProductCategory>? children});
}

/// @nodoc
class __$$_ProductCategoryCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$_ProductCategory>
    implements _$$_ProductCategoryCopyWith<$Res> {
  __$$_ProductCategoryCopyWithImpl(
      _$_ProductCategory _value, $Res Function(_$_ProductCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? imageUrls = null,
    Object? parent = freezed,
    Object? createdAt = null,
    Object? children = freezed,
  }) {
    return _then(_$_ProductCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategory implements _ProductCategory {
  const _$_ProductCategory(
      {required this.id,
      required this.name,
      required this.description,
      required this.shortDescription,
      required final List<String> imageUrls,
      required this.parent,
      required this.createdAt,
      required final List<ProductCategory>? children})
      : _imageUrls = imageUrls,
        _children = children;

  factory _$_ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String shortDescription;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final String? parent;
  @override
  final DateTime createdAt;
  final List<ProductCategory>? _children;
  @override
  List<ProductCategory>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, description: $description, shortDescription: $shortDescription, imageUrls: $imageUrls, parent: $parent, createdAt: $createdAt, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      shortDescription,
      const DeepCollectionEquality().hash(_imageUrls),
      parent,
      createdAt,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCategoryCopyWith<_$_ProductCategory> get copyWith =>
      __$$_ProductCategoryCopyWithImpl<_$_ProductCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoryToJson(
      this,
    );
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
      {required final String id,
      required final String name,
      required final String description,
      required final String shortDescription,
      required final List<String> imageUrls,
      required final String? parent,
      required final DateTime createdAt,
      required final List<ProductCategory>? children}) = _$_ProductCategory;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$_ProductCategory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get shortDescription;
  @override
  List<String> get imageUrls;
  @override
  String? get parent;
  @override
  DateTime get createdAt;
  @override
  List<ProductCategory>? get children;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoryCopyWith<_$_ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategoryRequest _$ProductCategoryRequestFromJson(
    Map<String, dynamic> json) {
  return _ProducrtCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryRequest {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryRequestCopyWith<ProductCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryRequestCopyWith<$Res> {
  factory $ProductCategoryRequestCopyWith(ProductCategoryRequest value,
          $Res Function(ProductCategoryRequest) then) =
      _$ProductCategoryRequestCopyWithImpl<$Res, ProductCategoryRequest>;
  @useResult
  $Res call(
      {String name,
      String description,
      String shortDescription,
      String? parent});
}

/// @nodoc
class _$ProductCategoryRequestCopyWithImpl<$Res,
        $Val extends ProductCategoryRequest>
    implements $ProductCategoryRequestCopyWith<$Res> {
  _$ProductCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProducrtCategoryRequestCopyWith<$Res>
    implements $ProductCategoryRequestCopyWith<$Res> {
  factory _$$_ProducrtCategoryRequestCopyWith(_$_ProducrtCategoryRequest value,
          $Res Function(_$_ProducrtCategoryRequest) then) =
      __$$_ProducrtCategoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String shortDescription,
      String? parent});
}

/// @nodoc
class __$$_ProducrtCategoryRequestCopyWithImpl<$Res>
    extends _$ProductCategoryRequestCopyWithImpl<$Res,
        _$_ProducrtCategoryRequest>
    implements _$$_ProducrtCategoryRequestCopyWith<$Res> {
  __$$_ProducrtCategoryRequestCopyWithImpl(_$_ProducrtCategoryRequest _value,
      $Res Function(_$_ProducrtCategoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? parent = freezed,
  }) {
    return _then(_$_ProducrtCategoryRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProducrtCategoryRequest implements _ProducrtCategoryRequest {
  const _$_ProducrtCategoryRequest(
      {this.name = '',
      this.description = '',
      this.shortDescription = '',
      this.parent});

  factory _$_ProducrtCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProducrtCategoryRequestFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String shortDescription;
  @override
  final String? parent;

  @override
  String toString() {
    return 'ProductCategoryRequest(name: $name, description: $description, shortDescription: $shortDescription, parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProducrtCategoryRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, shortDescription, parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProducrtCategoryRequestCopyWith<_$_ProducrtCategoryRequest>
      get copyWith =>
          __$$_ProducrtCategoryRequestCopyWithImpl<_$_ProducrtCategoryRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProducrtCategoryRequestToJson(
      this,
    );
  }
}

abstract class _ProducrtCategoryRequest implements ProductCategoryRequest {
  const factory _ProducrtCategoryRequest(
      {final String name,
      final String description,
      final String shortDescription,
      final String? parent}) = _$_ProducrtCategoryRequest;

  factory _ProducrtCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$_ProducrtCategoryRequest.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get shortDescription;
  @override
  String? get parent;
  @override
  @JsonKey(ignore: true)
  _$$_ProducrtCategoryRequestCopyWith<_$_ProducrtCategoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}
