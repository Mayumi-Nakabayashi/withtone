import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:withtone/models/feedback/feedback.dart';
import 'package:withtone/models/post/post.dart';

part 'feedback_ref.g.dart';

@riverpod
class FeedbackRef extends _$FeedbackRef {
  @override
  CollectionReference<Feedback> build(Post post) {
    final feedbackRef = FirebaseFirestore.instance
        .collection('posts')
        .doc(post.id)
        .collection('feedback')
        .withConverter<Feedback>(
          fromFirestore: (snapshot, _) => Feedback.fromJson(snapshot.data()!),
          toFirestore: (feedback, _) => feedback.toJson(),
        );
    return feedbackRef;
  }
}