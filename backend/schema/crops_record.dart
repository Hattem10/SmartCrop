import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CropsRecord extends FirestoreRecord {
  CropsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  bool hasLabel() => _label != null;

  // "rainfall" field.
  double? _rainfall;
  double get rainfall => _rainfall ?? 0.0;
  bool hasRainfall() => _rainfall != null;

  // "humidity" field.
  double? _humidity;
  double get humidity => _humidity ?? 0.0;
  bool hasHumidity() => _humidity != null;

  // "temperature" field.
  double? _temperature;
  double get temperature => _temperature ?? 0.0;
  bool hasTemperature() => _temperature != null;

  // "family" field.
  String? _family;
  String get family => _family ?? '';
  bool hasFamily() => _family != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _label = snapshotData['label'] as String?;
    _rainfall = castToType<double>(snapshotData['rainfall']);
    _humidity = castToType<double>(snapshotData['humidity']);
    _temperature = castToType<double>(snapshotData['temperature']);
    _family = snapshotData['family'] as String?;
    _category = snapshotData['category'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Crops');

  static Stream<CropsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CropsRecord.fromSnapshot(s));

  static Future<CropsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CropsRecord.fromSnapshot(s));

  static CropsRecord fromSnapshot(DocumentSnapshot snapshot) => CropsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CropsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CropsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CropsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CropsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCropsRecordData({
  String? label,
  double? rainfall,
  double? humidity,
  double? temperature,
  String? family,
  String? category,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'label': label,
      'rainfall': rainfall,
      'humidity': humidity,
      'temperature': temperature,
      'family': family,
      'category': category,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class CropsRecordDocumentEquality implements Equality<CropsRecord> {
  const CropsRecordDocumentEquality();

  @override
  bool equals(CropsRecord? e1, CropsRecord? e2) {
    return e1?.label == e2?.label &&
        e1?.rainfall == e2?.rainfall &&
        e1?.humidity == e2?.humidity &&
        e1?.temperature == e2?.temperature &&
        e1?.family == e2?.family &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CropsRecord? e) => const ListEquality().hash([
        e?.label,
        e?.rainfall,
        e?.humidity,
        e?.temperature,
        e?.family,
        e?.category,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is CropsRecord;
}
