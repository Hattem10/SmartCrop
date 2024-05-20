import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CropFavRecord extends FirestoreRecord {
  CropFavRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  bool hasIsFavorite() => _isFavorite != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  bool hasLabel() => _label != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _isFavorite = snapshotData['is_favorite'] as bool?;
    _label = snapshotData['label'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CropFav')
          : FirebaseFirestore.instance.collectionGroup('CropFav');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CropFav').doc(id);

  static Stream<CropFavRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CropFavRecord.fromSnapshot(s));

  static Future<CropFavRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CropFavRecord.fromSnapshot(s));

  static CropFavRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CropFavRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CropFavRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CropFavRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CropFavRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CropFavRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCropFavRecordData({
  bool? isFavorite,
  String? label,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'is_favorite': isFavorite,
      'label': label,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class CropFavRecordDocumentEquality implements Equality<CropFavRecord> {
  const CropFavRecordDocumentEquality();

  @override
  bool equals(CropFavRecord? e1, CropFavRecord? e2) {
    return e1?.isFavorite == e2?.isFavorite &&
        e1?.label == e2?.label &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CropFavRecord? e) =>
      const ListEquality().hash([e?.isFavorite, e?.label, e?.image]);

  @override
  bool isValidKey(Object? o) => o is CropFavRecord;
}
