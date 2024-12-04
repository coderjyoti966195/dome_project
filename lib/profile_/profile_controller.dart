import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var userName = ''.obs;
  var profileImage = ''.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Fetch User Data from Firestore
  Future<void> fetchUserData() async {
    try {
      String uid = _auth.currentUser!.uid;
      DocumentSnapshot userDoc =
      await _firestore.collection('users').doc(uid).get();

      if (userDoc.exists) {
        userName.value = userDoc['name'];
        profileImage.value = userDoc['profileImage'];
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  // Update Profile Image
  Future<void> updateProfileImage(File image) async {
    try {
      String uid = _auth.currentUser!.uid;

      // Upload the image to Firebase Storage
      // [Storage logic goes here]

      // Assume image URL is uploadedUrl
      String uploadedUrl = 'uploaded_image_url_here';

      // Update Firestore with new image URL
      await _firestore.collection('users').doc(uid).update({
        'profileImage': uploadedUrl,
      });

      profileImage.value = uploadedUrl;
      Get.snackbar('Success', 'Profile image updated');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  // Logout Functionality
  Future<void> logout() async {
    try {
      await _auth.signOut();
      Get.offAllNamed('/splash');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
