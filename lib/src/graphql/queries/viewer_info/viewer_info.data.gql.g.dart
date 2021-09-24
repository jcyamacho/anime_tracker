// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer_info.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerInfoData> _$gViewerInfoDataSerializer =
    new _$GViewerInfoDataSerializer();
Serializer<GViewerInfoData_Viewer> _$gViewerInfoDataViewerSerializer =
    new _$GViewerInfoData_ViewerSerializer();
Serializer<GViewerInfoData_Viewer_avatar>
    _$gViewerInfoDataViewerAvatarSerializer =
    new _$GViewerInfoData_Viewer_avatarSerializer();

class _$GViewerInfoDataSerializer
    implements StructuredSerializer<GViewerInfoData> {
  @override
  final Iterable<Type> types = const [GViewerInfoData, _$GViewerInfoData];
  @override
  final String wireName = 'GViewerInfoData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerInfoData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Viewer;
    if (value != null) {
      result
        ..add('Viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerInfoData_Viewer)));
    }
    return result;
  }

  @override
  GViewerInfoData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerInfoDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Viewer':
          result.Viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerInfoData_Viewer))!
              as GViewerInfoData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerInfoData_ViewerSerializer
    implements StructuredSerializer<GViewerInfoData_Viewer> {
  @override
  final Iterable<Type> types = const [
    GViewerInfoData_Viewer,
    _$GViewerInfoData_Viewer
  ];
  @override
  final String wireName = 'GViewerInfoData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerInfoData_Viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerInfoData_Viewer_avatar)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerInfoData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerInfoData_ViewerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerInfoData_Viewer_avatar))!
              as GViewerInfoData_Viewer_avatar);
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerInfoData_Viewer_avatarSerializer
    implements StructuredSerializer<GViewerInfoData_Viewer_avatar> {
  @override
  final Iterable<Type> types = const [
    GViewerInfoData_Viewer_avatar,
    _$GViewerInfoData_Viewer_avatar
  ];
  @override
  final String wireName = 'GViewerInfoData_Viewer_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerInfoData_Viewer_avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerInfoData_Viewer_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerInfoData_Viewer_avatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerInfoData extends GViewerInfoData {
  @override
  final String G__typename;
  @override
  final GViewerInfoData_Viewer? Viewer;

  factory _$GViewerInfoData([void Function(GViewerInfoDataBuilder)? updates]) =>
      (new GViewerInfoDataBuilder()..update(updates)).build();

  _$GViewerInfoData._({required this.G__typename, this.Viewer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GViewerInfoData', 'G__typename');
  }

  @override
  GViewerInfoData rebuild(void Function(GViewerInfoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerInfoDataBuilder toBuilder() =>
      new GViewerInfoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerInfoData &&
        G__typename == other.G__typename &&
        Viewer == other.Viewer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), Viewer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerInfoData')
          ..add('G__typename', G__typename)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GViewerInfoDataBuilder
    implements Builder<GViewerInfoData, GViewerInfoDataBuilder> {
  _$GViewerInfoData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerInfoData_ViewerBuilder? _Viewer;
  GViewerInfoData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GViewerInfoData_ViewerBuilder();
  set Viewer(GViewerInfoData_ViewerBuilder? Viewer) => _$this._Viewer = Viewer;

  GViewerInfoDataBuilder() {
    GViewerInfoData._initializeBuilder(this);
  }

  GViewerInfoDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerInfoData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerInfoData;
  }

  @override
  void update(void Function(GViewerInfoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerInfoData build() {
    _$GViewerInfoData _$result;
    try {
      _$result = _$v ??
          new _$GViewerInfoData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GViewerInfoData', 'G__typename'),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GViewerInfoData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerInfoData_Viewer extends GViewerInfoData_Viewer {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final GViewerInfoData_Viewer_avatar? avatar;
  @override
  final String? bannerImage;

  factory _$GViewerInfoData_Viewer(
          [void Function(GViewerInfoData_ViewerBuilder)? updates]) =>
      (new GViewerInfoData_ViewerBuilder()..update(updates)).build();

  _$GViewerInfoData_Viewer._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.avatar,
      this.bannerImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GViewerInfoData_Viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GViewerInfoData_Viewer', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GViewerInfoData_Viewer', 'name');
  }

  @override
  GViewerInfoData_Viewer rebuild(
          void Function(GViewerInfoData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerInfoData_ViewerBuilder toBuilder() =>
      new GViewerInfoData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerInfoData_Viewer &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        avatar == other.avatar &&
        bannerImage == other.bannerImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
            avatar.hashCode),
        bannerImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerInfoData_Viewer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('avatar', avatar)
          ..add('bannerImage', bannerImage))
        .toString();
  }
}

class GViewerInfoData_ViewerBuilder
    implements Builder<GViewerInfoData_Viewer, GViewerInfoData_ViewerBuilder> {
  _$GViewerInfoData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GViewerInfoData_Viewer_avatarBuilder? _avatar;
  GViewerInfoData_Viewer_avatarBuilder get avatar =>
      _$this._avatar ??= new GViewerInfoData_Viewer_avatarBuilder();
  set avatar(GViewerInfoData_Viewer_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GViewerInfoData_ViewerBuilder() {
    GViewerInfoData_Viewer._initializeBuilder(this);
  }

  GViewerInfoData_ViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _avatar = $v.avatar?.toBuilder();
      _bannerImage = $v.bannerImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerInfoData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerInfoData_Viewer;
  }

  @override
  void update(void Function(GViewerInfoData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerInfoData_Viewer build() {
    _$GViewerInfoData_Viewer _$result;
    try {
      _$result = _$v ??
          new _$GViewerInfoData_Viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GViewerInfoData_Viewer', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GViewerInfoData_Viewer', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GViewerInfoData_Viewer', 'name'),
              avatar: _avatar?.build(),
              bannerImage: bannerImage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GViewerInfoData_Viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerInfoData_Viewer_avatar extends GViewerInfoData_Viewer_avatar {
  @override
  final String G__typename;
  @override
  final String? large;
  @override
  final String? medium;

  factory _$GViewerInfoData_Viewer_avatar(
          [void Function(GViewerInfoData_Viewer_avatarBuilder)? updates]) =>
      (new GViewerInfoData_Viewer_avatarBuilder()..update(updates)).build();

  _$GViewerInfoData_Viewer_avatar._(
      {required this.G__typename, this.large, this.medium})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GViewerInfoData_Viewer_avatar', 'G__typename');
  }

  @override
  GViewerInfoData_Viewer_avatar rebuild(
          void Function(GViewerInfoData_Viewer_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerInfoData_Viewer_avatarBuilder toBuilder() =>
      new GViewerInfoData_Viewer_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerInfoData_Viewer_avatar &&
        G__typename == other.G__typename &&
        large == other.large &&
        medium == other.medium;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), large.hashCode), medium.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerInfoData_Viewer_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large)
          ..add('medium', medium))
        .toString();
  }
}

class GViewerInfoData_Viewer_avatarBuilder
    implements
        Builder<GViewerInfoData_Viewer_avatar,
            GViewerInfoData_Viewer_avatarBuilder> {
  _$GViewerInfoData_Viewer_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  GViewerInfoData_Viewer_avatarBuilder() {
    GViewerInfoData_Viewer_avatar._initializeBuilder(this);
  }

  GViewerInfoData_Viewer_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _medium = $v.medium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerInfoData_Viewer_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerInfoData_Viewer_avatar;
  }

  @override
  void update(void Function(GViewerInfoData_Viewer_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerInfoData_Viewer_avatar build() {
    final _$result = _$v ??
        new _$GViewerInfoData_Viewer_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GViewerInfoData_Viewer_avatar', 'G__typename'),
            large: large,
            medium: medium);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
