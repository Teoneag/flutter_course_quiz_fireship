import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

import '/services/auth.dart';
import 'models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Topic>> getTopics() async {
    final snapshot = await _db.collection('topics').get();
    final data = snapshot.docs.map((doc) => doc.data());
    return data.map((json) => Topic.fromJson(json)).toList();
  }

  Future<Quiz> getQuiz(String id) async {
    final snapshot = await _db.collection('quizzes').doc(id).get();
    return Quiz.fromJson(snapshot.data() ?? {});
  }

  Stream<Report> streamReport() {
    print('trying to stream report');
    return AuthService().userStream.switchMap((user) {
      if (user == null) return Stream.fromIterable([Report()]);

      print('streaming report for ${user.uid}');
      var ref = _db.collection('reports').doc(user.uid);
      return ref.snapshots().map((doc) => Report.fromJson(doc.data()!));
      // here null error
    });
  }

  Future<void> updateUserReport(Quiz quiz) {
    var user = AuthService().user!;
    var ref = _db.collection('reports').doc(user.uid);

    var data = {
      'total': FieldValue.increment(1),
      'topics': {
        quiz.topic: FieldValue.arrayUnion([quiz.id]),
      },
    };

    return ref.set(data, SetOptions(merge: true));
  }
}
