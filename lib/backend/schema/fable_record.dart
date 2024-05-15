import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FableRecord extends FirestoreRecord {
  FableRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fable');

  static Stream<FableRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FableRecord.fromSnapshot(s));

  static Future<FableRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FableRecord.fromSnapshot(s));

  static FableRecord fromSnapshot(DocumentSnapshot snapshot) => FableRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FableRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FableRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FableRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FableRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFableRecordData({
  String? image,
  String? title,
  String? content,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'content': content,
    }.withoutNulls,
  );

  return firestoreData;
}

class FableRecordDocumentEquality implements Equality<FableRecord> {
  const FableRecordDocumentEquality();

  @override
  bool equals(FableRecord? e1, FableRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.content == e2?.content;
  }

  @override
  int hash(FableRecord? e) =>
      const ListEquality().hash([e?.image, e?.title, e?.content]);

  @override
  bool isValidKey(Object? o) => o is FableRecord;
}
