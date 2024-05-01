import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CropRecord extends FirestoreRecord {
  CropRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "temperature" field.
  double? _temperature;
  double get temperature => _temperature ?? 0.0;
  bool hasTemperature() => _temperature != null;

  // "humidity" field.
  double? _humidity;
  double get humidity => _humidity ?? 0.0;
  bool hasHumidity() => _humidity != null;

  // "rainfall" field.
  double? _rainfall;
  double get rainfall => _rainfall ?? 0.0;
  bool hasRainfall() => _rainfall != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  bool hasLabel() => _label != null;

  void _initializeFields() {
    _temperature = castToType<double>(snapshotData['temperature']);
    _humidity = castToType<double>(snapshotData['humidity']);
    _rainfall = castToType<double>(snapshotData['rainfall']);
    _label = snapshotData['label'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Crop');

  static Stream<CropRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CropRecord.fromSnapshot(s));

  static Future<CropRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CropRecord.fromSnapshot(s));

  static CropRecord fromSnapshot(DocumentSnapshot snapshot) => CropRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CropRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CropRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CropRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CropRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCropRecordData({
  double? temperature,
  double? humidity,
  double? rainfall,
  String? label,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'temperature': temperature,
      'humidity': humidity,
      'rainfall': rainfall,
      'label': label,
    }.withoutNulls,
  );

  return firestoreData;
}

class CropRecordDocumentEquality implements Equality<CropRecord> {
  const CropRecordDocumentEquality();

  @override
  bool equals(CropRecord? e1, CropRecord? e2) {
    return e1?.temperature == e2?.temperature &&
        e1?.humidity == e2?.humidity &&
        e1?.rainfall == e2?.rainfall &&
        e1?.label == e2?.label;
  }

  @override
  int hash(CropRecord? e) => const ListEquality()
      .hash([e?.temperature, e?.humidity, e?.rainfall, e?.label]);

  @override
  bool isValidKey(Object? o) => o is CropRecord;
}
