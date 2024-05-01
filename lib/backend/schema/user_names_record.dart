import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserNamesRecord extends FirestoreRecord {
  UserNamesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

  // "password" field.
  int? _password;
  int get password => _password ?? 0;
  bool hasPassword() => _password != null;

  // "land_size" field.
  double? _landSize;
  double get landSize => _landSize ?? 0.0;
  bool hasLandSize() => _landSize != null;

  // "soil_type" field.
  List<String>? _soilType;
  List<String> get soilType => _soilType ?? const [];
  bool hasSoilType() => _soilType != null;

  // "season" field.
  List<String>? _season;
  List<String> get season => _season ?? const [];
  bool hasSeason() => _season != null;

  // "sunlight_exposure" field.
  String? _sunlightExposure;
  String get sunlightExposure => _sunlightExposure ?? '';
  bool hasSunlightExposure() => _sunlightExposure != null;

  // "exp_lvl" field.
  String? _expLvl;
  String get expLvl => _expLvl ?? '';
  bool hasExpLvl() => _expLvl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _occupation = snapshotData['occupation'] as String?;
    _password = castToType<int>(snapshotData['password']);
    _landSize = castToType<double>(snapshotData['land_size']);
    _soilType = getDataList(snapshotData['soil_type']);
    _season = getDataList(snapshotData['season']);
    _sunlightExposure = snapshotData['sunlight_exposure'] as String?;
    _expLvl = snapshotData['exp_lvl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserNames');

  static Stream<UserNamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserNamesRecord.fromSnapshot(s));

  static Future<UserNamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserNamesRecord.fromSnapshot(s));

  static UserNamesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserNamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserNamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserNamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserNamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserNamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserNamesRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? occupation,
  int? password,
  double? landSize,
  String? sunlightExposure,
  String? expLvl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'occupation': occupation,
      'password': password,
      'land_size': landSize,
      'sunlight_exposure': sunlightExposure,
      'exp_lvl': expLvl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserNamesRecordDocumentEquality implements Equality<UserNamesRecord> {
  const UserNamesRecordDocumentEquality();

  @override
  bool equals(UserNamesRecord? e1, UserNamesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.occupation == e2?.occupation &&
        e1?.password == e2?.password &&
        e1?.landSize == e2?.landSize &&
        listEquality.equals(e1?.soilType, e2?.soilType) &&
        listEquality.equals(e1?.season, e2?.season) &&
        e1?.sunlightExposure == e2?.sunlightExposure &&
        e1?.expLvl == e2?.expLvl;
  }

  @override
  int hash(UserNamesRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.occupation,
        e?.password,
        e?.landSize,
        e?.soilType,
        e?.season,
        e?.sunlightExposure,
        e?.expLvl
      ]);

  @override
  bool isValidKey(Object? o) => o is UserNamesRecord;
}
