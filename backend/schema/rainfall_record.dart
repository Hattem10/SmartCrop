import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RainfallRecord extends FirestoreRecord {
  RainfallRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "Spring" field.
  int? _spring;
  int get spring => _spring ?? 0;
  bool hasSpring() => _spring != null;

  // "Winter" field.
  int? _winter;
  int get winter => _winter ?? 0;
  bool hasWinter() => _winter != null;

  // "Summer" field.
  int? _summer;
  int get summer => _summer ?? 0;
  bool hasSummer() => _summer != null;

  // "Fall" field.
  int? _fall;
  int get fall => _fall ?? 0;
  bool hasFall() => _fall != null;

  void _initializeFields() {
    _region = snapshotData['Region'] as String?;
    _spring = castToType<int>(snapshotData['Spring']);
    _winter = castToType<int>(snapshotData['Winter']);
    _summer = castToType<int>(snapshotData['Summer']);
    _fall = castToType<int>(snapshotData['Fall']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Rainfall');

  static Stream<RainfallRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RainfallRecord.fromSnapshot(s));

  static Future<RainfallRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RainfallRecord.fromSnapshot(s));

  static RainfallRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RainfallRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RainfallRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RainfallRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RainfallRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RainfallRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRainfallRecordData({
  String? region,
  int? spring,
  int? winter,
  int? summer,
  int? fall,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Region': region,
      'Spring': spring,
      'Winter': winter,
      'Summer': summer,
      'Fall': fall,
    }.withoutNulls,
  );

  return firestoreData;
}

class RainfallRecordDocumentEquality implements Equality<RainfallRecord> {
  const RainfallRecordDocumentEquality();

  @override
  bool equals(RainfallRecord? e1, RainfallRecord? e2) {
    return e1?.region == e2?.region &&
        e1?.spring == e2?.spring &&
        e1?.winter == e2?.winter &&
        e1?.summer == e2?.summer &&
        e1?.fall == e2?.fall;
  }

  @override
  int hash(RainfallRecord? e) => const ListEquality()
      .hash([e?.region, e?.spring, e?.winter, e?.summer, e?.fall]);

  @override
  bool isValidKey(Object? o) => o is RainfallRecord;
}
