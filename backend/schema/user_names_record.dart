import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserNamesRecord extends FirestoreRecord {
  UserNamesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

  // "password" field.
  int? _password;
  int get password => _password ?? 0;
  bool hasPassword() => _password != null;

  // "exp_lvl" field.
  String? _expLvl;
  String get expLvl => _expLvl ?? '';
  bool hasExpLvl() => _expLvl != null;

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "season" field.
  String? _season;
  String get season => _season ?? '';
  bool hasSeason() => _season != null;

  // "Nitrogen" field.
  double? _nitrogen;
  double get nitrogen => _nitrogen ?? 0.0;
  bool hasNitrogen() => _nitrogen != null;

  // "Phosphorus" field.
  double? _phosphorus;
  double get phosphorus => _phosphorus ?? 0.0;
  bool hasPhosphorus() => _phosphorus != null;

  // "Potassium" field.
  double? _potassium;
  double get potassium => _potassium ?? 0.0;
  bool hasPotassium() => _potassium != null;

  // "pH" field.
  double? _pH;
  double get pH => _pH ?? 0.0;
  bool hasPH() => _pH != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _occupation = snapshotData['occupation'] as String?;
    _password = castToType<int>(snapshotData['password']);
    _expLvl = snapshotData['exp_lvl'] as String?;
    _region = snapshotData['Region'] as String?;
    _season = snapshotData['season'] as String?;
    _nitrogen = castToType<double>(snapshotData['Nitrogen']);
    _phosphorus = castToType<double>(snapshotData['Phosphorus']);
    _potassium = castToType<double>(snapshotData['Potassium']);
    _pH = castToType<double>(snapshotData['pH']);
    _phoneNumber = snapshotData['phone_number'] as String?;
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
  String? occupation,
  int? password,
  String? expLvl,
  String? region,
  String? season,
  double? nitrogen,
  double? phosphorus,
  double? potassium,
  double? pH,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'occupation': occupation,
      'password': password,
      'exp_lvl': expLvl,
      'Region': region,
      'season': season,
      'Nitrogen': nitrogen,
      'Phosphorus': phosphorus,
      'Potassium': potassium,
      'pH': pH,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserNamesRecordDocumentEquality implements Equality<UserNamesRecord> {
  const UserNamesRecordDocumentEquality();

  @override
  bool equals(UserNamesRecord? e1, UserNamesRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.occupation == e2?.occupation &&
        e1?.password == e2?.password &&
        e1?.expLvl == e2?.expLvl &&
        e1?.region == e2?.region &&
        e1?.season == e2?.season &&
        e1?.nitrogen == e2?.nitrogen &&
        e1?.phosphorus == e2?.phosphorus &&
        e1?.potassium == e2?.potassium &&
        e1?.pH == e2?.pH &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UserNamesRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.occupation,
        e?.password,
        e?.expLvl,
        e?.region,
        e?.season,
        e?.nitrogen,
        e?.phosphorus,
        e?.potassium,
        e?.pH,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UserNamesRecord;
}
