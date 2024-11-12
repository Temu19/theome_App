import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/userdetailtext.dart'; // Import the UserDetail widget

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final usersCollection = FirebaseFirestore.instance.collection("users");

  // Variables to hold user data
  String? username;
  String? email;
  String? denomination;
  String? bio;

  // Variable to track loading state
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  // Fetch user data from Firestore
  Future<void> _fetchUserData() async {
    try {
      final User? currentUser = _auth.currentUser;

      if (currentUser != null) {
        setState(() {
          email = currentUser.email ?? "Not found";
        });

        // Fetch the user document from Firestore using UID
        DocumentSnapshot userDoc =
            await _firestore.collection('users').doc(currentUser.uid).get();

        if (userDoc.exists) {
          setState(() {
            // Print the entire document data to debug
            print("Fetched Document: ${userDoc.data()}");

            // Safely check for the existence of fields and set them
            denomination = userDoc['denomination'] ?? "Denomination not available"; // Default if not found
            username = userDoc['username'] ?? "Username not available"; // Default if not found
            bio = userDoc['bio'] ?? "Empty bio";

            print("Denomination: $denomination");
            print("Username: $username");
            print("bio: $bio");

            isLoading = false; // Set loading state to false after data is fetched
          });
        } else {
          setState(() {
            isLoading = false; // Stop loading even if user data is missing
          });
          print('No user data found for UID: ${currentUser.uid}');
        }
      } else {
        setState(() {
          isLoading = false; // Stop loading if no user is logged in
        });
        print('No current user found');
      }
    } catch (e) {
      setState(() {
        isLoading = false; // Stop loading if an error occurs
      });
      print("Error while fetching user data: $e");
    }
  }

  // Edit field placeholder
  Future<void> editField(String field) async {
    String newValue = "";
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: Text(
          "Edit $field", 
          style: const TextStyle(color: Colors.white),
        ),
        content: TextField(
          autofocus: true, 
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Enter new $field", 
            hintStyle: const TextStyle(color: Colors.grey),
          ),
          onChanged: (value){
            newValue = value;
          }
        ),
        actions: [
          // cancel
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          // save
          TextButton(
            onPressed: () => Navigator.of(context).pop(newValue), 
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );

    // If the new value is not empty, update Firestore
    if (newValue.isNotEmpty) {
      try {
        final currentUser = FirebaseAuth.instance.currentUser; // Directly access currentUser

        if (currentUser != null) {
          // Update Firestore document using currentUser.uid as the document ID
          await usersCollection.doc(currentUser.uid).update({
            field: newValue, // Update the field in Firestore
          });
          await _fetchUserData();
          print('Successfully updated $field to $newValue');
        } else {
          print('No user is logged in.');
        }
      } catch (e) {
        print('Error updating $field: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xFFD6C6B4),

      appBar: AppBar(
        toolbarHeight: 70,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Theome: User Profile",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
                backgroundColor: Color(0XFF4F6D7A),

      ),
      body: 
      

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: isLoading
            ? const Center(child: CircularProgressIndicator()) // Show loading spinner while data is fetching
            : ListView(
                children: [
                  const SizedBox(height: 50),
                  // Profile picture (you can add an actual profile picture here)
                  const Icon(
                    Icons.person,
                    size: 72,
                  ),
                  const SizedBox(height: 10),
                  // Display user email
                  Text(
                    email ?? "Email not available",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  const SizedBox(height: 50),
                  // Display denomination (first field in Firestore)
                  UserDetail(
                    text: denomination ?? "Denomination not available", // Pass 'denomination'
                    sectionName: "Denomination",
                    onPressed: () => editField("denomination"), // Handle edit
                  ),
                  // Display username (second field in Firestore)
                  UserDetail(
                    text: username ?? "Username not available", // Pass 'username'
                    sectionName: "User Name",
                    onPressed: () => editField("username"), // Handle edit
                  ),
                  // Bio section (You can implement actual bio data later)
                  UserDetail(
                    text: bio ?? "Empty bio",
                    sectionName: "Bio",
                    onPressed: () => editField("bio"), // Handle edit
                  ),
                ],
              ),
      ),
    );
  }
}
