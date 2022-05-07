import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pro_record.g.dart';

abstract class ProRecord implements Built<ProRecord, ProRecordBuilder> {
  static Serializer<ProRecord> get serializer => _$proRecordSerializer;

  @nullable
  LatLng get localisationPro;

  @nullable
  @BuiltValueField(wireName: 'name_pro')
  String get namePro;

  @nullable
  BuiltList<String> get imagePro;

  @nullable
  String get emailPro;

  @nullable
  int get phoneNumber;

  @nullable
  String get passwordPro;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProRecordBuilder builder) => builder
    ..namePro = ''
    ..imagePro = ListBuilder()
    ..emailPro = ''
    ..phoneNumber = 0
    ..passwordPro = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pro');

  static Stream<ProRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProRecord._();
  factory ProRecord([void Function(ProRecordBuilder) updates]) = _$ProRecord;

  static ProRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProRecordData({
  LatLng localisationPro,
  String namePro,
  String emailPro,
  int phoneNumber,
  String passwordPro,
}) =>
    serializers.toFirestore(
        ProRecord.serializer,
        ProRecord((p) => p
          ..localisationPro = localisationPro
          ..namePro = namePro
          ..imagePro = null
          ..emailPro = emailPro
          ..phoneNumber = phoneNumber
          ..passwordPro = passwordPro));
