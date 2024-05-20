import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityPicksRecord extends FirestoreRecord {
  CommunityPicksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  bool hasLabel() => _label != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "season" field.
  String? _season;
  String get season => _season ?? '';
  bool hasSeason() => _season != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  void _initializeFields() {
    _label = snapshotData['label'] as String?;
    _category = snapshotData['category'] as String?;
    _image = snapshotData['image'] as String?;
    _season = snapshotData['season'] as String?;
    _region = snapshotData['region'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CommunityPicks');

  static Stream<CommunityPicksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityPicksRecord.fromSnapshot(s));

  static Future<CommunityPicksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityPicksRecord.fromSnapshot(s));

  static CommunityPicksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityPicksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityPicksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityPicksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityPicksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityPicksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityPicksRecordData({
  String? label,
  String? category,
  String? image,
  String? season,
  String? region,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'label': label,
      'category': category,
      'image': image,
      'season': season,
      'region': region,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityPicksRecordDocumentEquality
    implements Equality<CommunityPicksRecord> {
  const CommunityPicksRecordDocumentEquality();

  @override
  bool equals(CommunityPicksRecord? e1, CommunityPicksRecord? e2) {
    return e1?.label == e2?.label &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image &&
        e1?.season == e2?.season &&
        e1?.region == e2?.region;
  }

  @override
  int hash(CommunityPicksRecord? e) => const ListEquality()
      .hash([e?.label, e?.category, e?.image, e?.season, e?.region]);

  @override
  bool isValidKey(Object? o) => o is CommunityPicksRecord;
}
