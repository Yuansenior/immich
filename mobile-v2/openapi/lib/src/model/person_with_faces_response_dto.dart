//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/asset_face_without_person_response_dto.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_with_faces_response_dto.g.dart';

/// PersonWithFacesResponseDto
///
/// Properties:
/// * [birthDate] 
/// * [faces] 
/// * [id] 
/// * [isHidden] 
/// * [name] 
/// * [thumbnailPath] 
@BuiltValue()
abstract class PersonWithFacesResponseDto implements Built<PersonWithFacesResponseDto, PersonWithFacesResponseDtoBuilder> {
  @BuiltValueField(wireName: r'birthDate')
  Date? get birthDate;

  @BuiltValueField(wireName: r'faces')
  BuiltList<AssetFaceWithoutPersonResponseDto> get faces;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'isHidden')
  bool get isHidden;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'thumbnailPath')
  String get thumbnailPath;

  PersonWithFacesResponseDto._();

  factory PersonWithFacesResponseDto([void updates(PersonWithFacesResponseDtoBuilder b)]) = _$PersonWithFacesResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonWithFacesResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersonWithFacesResponseDto> get serializer => _$PersonWithFacesResponseDtoSerializer();
}

class _$PersonWithFacesResponseDtoSerializer implements PrimitiveSerializer<PersonWithFacesResponseDto> {
  @override
  final Iterable<Type> types = const [PersonWithFacesResponseDto, _$PersonWithFacesResponseDto];

  @override
  final String wireName = r'PersonWithFacesResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersonWithFacesResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'birthDate';
    yield object.birthDate == null ? null : serializers.serialize(
      object.birthDate,
      specifiedType: const FullType.nullable(Date),
    );
    yield r'faces';
    yield serializers.serialize(
      object.faces,
      specifiedType: const FullType(BuiltList, [FullType(AssetFaceWithoutPersonResponseDto)]),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'isHidden';
    yield serializers.serialize(
      object.isHidden,
      specifiedType: const FullType(bool),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'thumbnailPath';
    yield serializers.serialize(
      object.thumbnailPath,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PersonWithFacesResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PersonWithFacesResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'birthDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.birthDate = valueDes;
          break;
        case r'faces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AssetFaceWithoutPersonResponseDto)]),
          ) as BuiltList<AssetFaceWithoutPersonResponseDto>;
          result.faces.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'isHidden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isHidden = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'thumbnailPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.thumbnailPath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PersonWithFacesResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonWithFacesResponseDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

