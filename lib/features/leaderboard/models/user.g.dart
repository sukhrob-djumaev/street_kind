// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      isMe: json['isMe'] as bool,
      points: json['points'] as int,
      imageString: json['imageString'] as String,
      position: json['position'] as int,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isMe': instance.isMe,
      'points': instance.points,
      'imageString': instance.imageString,
      'position': instance.position,
    };
