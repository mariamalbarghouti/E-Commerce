// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:trail/app/modules/home/views/read_data.dart';

// import '../controllers/home_controller.dart';

// class HomeView extends GetView<HomeController> {
//   // const HomeView();

//   XFile? img = XFile("");
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   CollectionReference users = FirebaseFirestore.instance.collection('users');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('HomeView'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           TextButton(
//             onPressed: () async {
//               try {
//                 UserCredential userCredential = await FirebaseAuth.instance
//                     .createUserWithEmailAndPassword(
//                         email: "barry.allen@example.com",
//                         password: "SuperSecretPassword!");
//               } on FirebaseAuthException catch (e) {
//                 if (e.code == 'weak-password') {
//                   print('The password provided is too weak.');
//                 } else if (e.code == 'email-already-in-use') {
//                   print('The account already exists for that email.');
//                 }
//               } catch (e) {
//                 print(e);
//               }
//             },
//             child: Text(
//               'SignIn',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           // Sign Up
//           TextButton(
//             onPressed: () async {
//               try {
//                 UserCredential userCredential = await FirebaseAuth.instance
//                     .signInWithEmailAndPassword(
//                         email: "barry.allen@example.com",
//                         password: "SuperSecretPassword!");
//               } on FirebaseAuthException catch (e) {
//                 if (e.code == 'user-not-found') {
//                   print('No user found for that email.');
//                 } else if (e.code == 'wrong-password') {
//                   print('Wrong password provided for that user.');
//                 }
//               }
//             },
//             child: Text(
//               'SignUp',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           TextButton(
//             onPressed: () async {
//               logoPick();
//               Reference ref = FirebaseStorage.instance
//                   .ref()
//                   .child('images')
//                   .child('${img!.path}');
//             },
//             child: Text(
//               'Storage',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           // Firestore
//           TextButton(
//             onPressed: () async => await addUser(),
//             child: Text(
//               'Firebase ADD',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           // Firestore
//           TextButton(
//             onPressed: () async => await updateUser(),
//             child: Text(
//               "Firebase Update",
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           // Firestore
//           TextButton(
//             onPressed: () async => await deleteUser(),
//             child: Text(
//               'Firebase Delete',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           // Firestore
//           TextButton(
//             onPressed: () => Get.to(() => UserInformation()),
//             child: Text(
//               'Firebase Read',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> logoPick() async {
//     // print("${logo.value}");
//     ImagePicker imagePicker = ImagePicker();
//     img = await imagePicker.pickImage(
//       source: ImageSource.gallery,
//       imageQuality: 85,
//     );
//     // print("img ${img!.path}");
//     try {
//       await FirebaseStorage.instance
//           .ref('uploads/img')
//           .putFile(File(img!.path));
//     } on FirebaseException catch (e) {
//       // e.g, e.code == 'canceled'
//     }
//     // logo= EntityLogo(logo: img!.path);
//   }

//   Future<void> addUser() {
//     // Call the user's CollectionReference to add a new user
//     return users
//         .add({
//           'full_name': "John Doe", // John Doe
//           'company': "Stokes and Sons", // Stokes and Sons
//           'age': "42" // 42
//         })
//         .then((value) => print("User Added"))
//         .catchError((error) => print("Failed to add user: $error"));
//   }

//   Future<void> updateUser() {
//     return users
//         .doc('DJewqtVFwkfWx8WZX6eC')
//         .update({'company': 'Albarghouti'})
//         .then((value) => print("User Updated"))
//         .catchError((error) => print("Failed to update user: $error"));
//   }

//   Future<void> deleteUser() {
//     return users
//         .doc('DJewqtVFwkfWx8WZX6eC')
//         .delete()
//         .then((value) => print("User Deleted"))
//         .catchError((error) => print("Failed to delete user: $error"));
//   }
// }
