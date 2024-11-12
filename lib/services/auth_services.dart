import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

  // Firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Google Sign-In
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Begin with the Google sign-in process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      if (gUser == null) {
        // User canceled the sign-in process
        return null;
      }

      // Obtain authentication details from the sign-in process
      final GoogleSignInAuthentication gAuth = await gUser.authentication;

      // Create new credential for user
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      // Sign in to Firebase with the credentials
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user != null) {
        // Check if user document exists in Firestore
        final userDoc = await _firestore.collection('users').doc(user.uid).get();

        if (!userDoc.exists) {
          // If the document doesn't exist, create a new one
          await _firestore.collection('users').doc(user.uid).set({
            'uid': user.uid,
            'email': user.email,
            'displayName': user.displayName ?? 'Anonymous',
            'photoURL': user.photoURL ?? '',
            'denomination': 'Unknown',  // Example default value
            'bio': 'No bio available',  // Example default value
            'createdAt': FieldValue.serverTimestamp(),
          });
          print('Created new user document for ${user.displayName}');
        } else {
          print('User document already exists');
        }
      }

      return userCredential;
    } catch (e) {
      print('Error during Google sign-in: $e');
      return null;
    }
  }

  // Sign-out method
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    print("User signed out");
  }
}
