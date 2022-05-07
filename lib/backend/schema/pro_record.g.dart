// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pro_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProRecord> _$proRecordSerializer = new _$ProRecordSerializer();

class _$ProRecordSerializer implements StructuredSerializer<ProRecord> {
  @override
  final Iterable<Type> types = const [ProRecord, _$ProRecord];
  @override
  final String wireName = 'ProRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.localisationPro;
    if (value != null) {
      result
        ..add('localisationPro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.namePro;
    if (value != null) {
      result
        ..add('name_pro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagePro;
    if (value != null) {
      result
        ..add('imagePro')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.emailPro;
    if (value != null) {
      result
        ..add('emailPro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.passwordPro;
    if (value != null) {
      result
        ..add('passwordPro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ProRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'localisationPro':
          result.localisationPro = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'name_pro':
          result.namePro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagePro':
          result.imagePro.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'emailPro':
          result.emailPro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'passwordPro':
          result.passwordPro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ProRecord extends ProRecord {
  @override
  final LatLng localisationPro;
  @override
  final String namePro;
  @override
  final BuiltList<String> imagePro;
  @override
  final String emailPro;
  @override
  final int phoneNumber;
  @override
  final String passwordPro;
  @override
  final DocumentReference<Object> reference;

  factory _$ProRecord([void Function(ProRecordBuilder) updates]) =>
      (new ProRecordBuilder()..update(updates)).build();

  _$ProRecord._(
      {this.localisationPro,
      this.namePro,
      this.imagePro,
      this.emailPro,
      this.phoneNumber,
      this.passwordPro,
      this.reference})
      : super._();

  @override
  ProRecord rebuild(void Function(ProRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProRecordBuilder toBuilder() => new ProRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProRecord &&
        localisationPro == other.localisationPro &&
        namePro == other.namePro &&
        imagePro == other.imagePro &&
        emailPro == other.emailPro &&
        phoneNumber == other.phoneNumber &&
        passwordPro == other.passwordPro &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, localisationPro.hashCode), namePro.hashCode),
                        imagePro.hashCode),
                    emailPro.hashCode),
                phoneNumber.hashCode),
            passwordPro.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProRecord')
          ..add('localisationPro', localisationPro)
          ..add('namePro', namePro)
          ..add('imagePro', imagePro)
          ..add('emailPro', emailPro)
          ..add('phoneNumber', phoneNumber)
          ..add('passwordPro', passwordPro)
          ..add('reference', reference))
        .toString();
  }
}

class ProRecordBuilder implements Builder<ProRecord, ProRecordBuilder> {
  _$ProRecord _$v;

  LatLng _localisationPro;
  LatLng get localisationPro => _$this._localisationPro;
  set localisationPro(LatLng localisationPro) =>
      _$this._localisationPro = localisationPro;

  String _namePro;
  String get namePro => _$this._namePro;
  set namePro(String namePro) => _$this._namePro = namePro;

  ListBuilder<String> _imagePro;
  ListBuilder<String> get imagePro =>
      _$this._imagePro ??= new ListBuilder<String>();
  set imagePro(ListBuilder<String> imagePro) => _$this._imagePro = imagePro;

  String _emailPro;
  String get emailPro => _$this._emailPro;
  set emailPro(String emailPro) => _$this._emailPro = emailPro;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _passwordPro;
  String get passwordPro => _$this._passwordPro;
  set passwordPro(String passwordPro) => _$this._passwordPro = passwordPro;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProRecordBuilder() {
    ProRecord._initializeBuilder(this);
  }

  ProRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localisationPro = $v.localisationPro;
      _namePro = $v.namePro;
      _imagePro = $v.imagePro?.toBuilder();
      _emailPro = $v.emailPro;
      _phoneNumber = $v.phoneNumber;
      _passwordPro = $v.passwordPro;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProRecord;
  }

  @override
  void update(void Function(ProRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProRecord build() {
    _$ProRecord _$result;
    try {
      _$result = _$v ??
          new _$ProRecord._(
              localisationPro: localisationPro,
              namePro: namePro,
              imagePro: _imagePro?.build(),
              emailPro: emailPro,
              phoneNumber: phoneNumber,
              passwordPro: passwordPro,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'imagePro';
        _imagePro?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
