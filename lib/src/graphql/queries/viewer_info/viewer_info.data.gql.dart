// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:anime_tracker/src/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'viewer_info.data.gql.g.dart';

abstract class GViewerInfoData
    implements Built<GViewerInfoData, GViewerInfoDataBuilder> {
  GViewerInfoData._();

  factory GViewerInfoData([Function(GViewerInfoDataBuilder b) updates]) =
      _$GViewerInfoData;

  static void _initializeBuilder(GViewerInfoDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GViewerInfoData_Viewer? get Viewer;
  static Serializer<GViewerInfoData> get serializer =>
      _$gViewerInfoDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GViewerInfoData.serializer, this)
          as Map<String, dynamic>);
  static GViewerInfoData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GViewerInfoData.serializer, json);
}

abstract class GViewerInfoData_Viewer
    implements Built<GViewerInfoData_Viewer, GViewerInfoData_ViewerBuilder> {
  GViewerInfoData_Viewer._();

  factory GViewerInfoData_Viewer(
          [Function(GViewerInfoData_ViewerBuilder b) updates]) =
      _$GViewerInfoData_Viewer;

  static void _initializeBuilder(GViewerInfoData_ViewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  GViewerInfoData_Viewer_avatar? get avatar;
  String? get bannerImage;
  static Serializer<GViewerInfoData_Viewer> get serializer =>
      _$gViewerInfoDataViewerSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GViewerInfoData_Viewer.serializer, this)
          as Map<String, dynamic>);
  static GViewerInfoData_Viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GViewerInfoData_Viewer.serializer, json);
}

abstract class GViewerInfoData_Viewer_avatar
    implements
        Built<GViewerInfoData_Viewer_avatar,
            GViewerInfoData_Viewer_avatarBuilder> {
  GViewerInfoData_Viewer_avatar._();

  factory GViewerInfoData_Viewer_avatar(
          [Function(GViewerInfoData_Viewer_avatarBuilder b) updates]) =
      _$GViewerInfoData_Viewer_avatar;

  static void _initializeBuilder(GViewerInfoData_Viewer_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  String? get medium;
  static Serializer<GViewerInfoData_Viewer_avatar> get serializer =>
      _$gViewerInfoDataViewerAvatarSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GViewerInfoData_Viewer_avatar.serializer, this) as Map<String, dynamic>);
  static GViewerInfoData_Viewer_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GViewerInfoData_Viewer_avatar.serializer, json);
}
