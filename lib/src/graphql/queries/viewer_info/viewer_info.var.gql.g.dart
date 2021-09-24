// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer_info.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerInfoVars> _$gViewerInfoVarsSerializer =
    new _$GViewerInfoVarsSerializer();

class _$GViewerInfoVarsSerializer
    implements StructuredSerializer<GViewerInfoVars> {
  @override
  final Iterable<Type> types = const [GViewerInfoVars, _$GViewerInfoVars];
  @override
  final String wireName = 'GViewerInfoVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerInfoVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GViewerInfoVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GViewerInfoVarsBuilder().build();
  }
}

class _$GViewerInfoVars extends GViewerInfoVars {
  factory _$GViewerInfoVars([void Function(GViewerInfoVarsBuilder)? updates]) =>
      (new GViewerInfoVarsBuilder()..update(updates)).build();

  _$GViewerInfoVars._() : super._();

  @override
  GViewerInfoVars rebuild(void Function(GViewerInfoVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerInfoVarsBuilder toBuilder() =>
      new GViewerInfoVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerInfoVars;
  }

  @override
  int get hashCode {
    return 757272813;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GViewerInfoVars').toString();
  }
}

class GViewerInfoVarsBuilder
    implements Builder<GViewerInfoVars, GViewerInfoVarsBuilder> {
  _$GViewerInfoVars? _$v;

  GViewerInfoVarsBuilder();

  @override
  void replace(GViewerInfoVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerInfoVars;
  }

  @override
  void update(void Function(GViewerInfoVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerInfoVars build() {
    final _$result = _$v ?? new _$GViewerInfoVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
