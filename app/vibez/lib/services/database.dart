import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vibez/models/userdata.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference userDataCollection = Firestore.instance.collection('userData');

  Future updateUserData(String displayName, String userType, int gemsGiven, int gemsGained, String photoURL, bool verified, String description) async {
      return await userDataCollection.document(uid).setData({
        'displayName' : displayName,
        'userType' : userType,
        'gemsGiven' : gemsGiven,
        'gemsGained' : gemsGained,
        'photoURL' : photoURL,
        'verified' : verified,
        'description' : description
      });
  }

  // user data from snapshot
  List<UserData> _userDataListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return UserData(
        displayName: doc.data['displayName'] ?? '',
        userType: doc.data['userType'] ?? '',
        gemsGiven: doc.data['gemsGiven'] ?? 0,
        gemsGained: doc.data['gemsGained'] ?? 0,
        photoURL: doc.data['photoURL'] ?? '',
        verified: doc.data['verified'] ?? false,
        description: doc.data['description'] ?? '',
      );
    }).toList();
  }


    //get userData stream
  Stream<List<UserData>> get userData {
      return userDataCollection.snapshots()
      .map(_userDataListFromSnapshot);
  }


}