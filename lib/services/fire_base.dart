import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bookingtickets/constants.dart';

class Store{
  final Firestore _firestore = Firestore.instance;
Stream<QuerySnapshot> loadMovies() {
  return _firestore.collection(KmoviesCollection).snapshots();
}
  updateseats(data, documentID) {
    _firestore.collection(KmoviesCollection).document(documentID).updateData(
        data);
  }
}