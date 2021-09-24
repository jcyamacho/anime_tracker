// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:anime_tracker/src/graphql/queries/viewer_info/viewer_info.ast.gql.dart'
    as _i5;
import 'package:anime_tracker/src/graphql/queries/viewer_info/viewer_info.data.gql.dart'
    as _i2;
import 'package:anime_tracker/src/graphql/queries/viewer_info/viewer_info.var.gql.dart'
    as _i3;
import 'package:anime_tracker/src/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'viewer_info.req.gql.g.dart';

abstract class GViewerInfoReq
    implements
        Built<GViewerInfoReq, GViewerInfoReqBuilder>,
        _i1.OperationRequest<_i2.GViewerInfoData, _i3.GViewerInfoVars> {
  GViewerInfoReq._();

  factory GViewerInfoReq([Function(GViewerInfoReqBuilder b) updates]) =
      _$GViewerInfoReq;

  static void _initializeBuilder(GViewerInfoReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'ViewerInfo')
    ..executeOnListen = true;
  _i3.GViewerInfoVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GViewerInfoData? Function(_i2.GViewerInfoData?, _i2.GViewerInfoData?)?
      get updateResult;
  _i2.GViewerInfoData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GViewerInfoData? parseData(Map<String, dynamic> json) =>
      _i2.GViewerInfoData.fromJson(json);
  static Serializer<GViewerInfoReq> get serializer =>
      _$gViewerInfoReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GViewerInfoReq.serializer, this)
          as Map<String, dynamic>);
  static GViewerInfoReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GViewerInfoReq.serializer, json);
}
