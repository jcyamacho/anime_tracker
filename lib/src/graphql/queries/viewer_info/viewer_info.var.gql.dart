// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:anime_tracker/src/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'viewer_info.var.gql.g.dart';

abstract class GViewerInfoVars
    implements Built<GViewerInfoVars, GViewerInfoVarsBuilder> {
  GViewerInfoVars._();

  factory GViewerInfoVars([Function(GViewerInfoVarsBuilder b) updates]) =
      _$GViewerInfoVars;

  static Serializer<GViewerInfoVars> get serializer =>
      _$gViewerInfoVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GViewerInfoVars.serializer, this)
          as Map<String, dynamic>);
  static GViewerInfoVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GViewerInfoVars.serializer, json);
}
