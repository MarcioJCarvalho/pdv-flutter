import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pdv_flutter/app/injection.dart';
import 'app/app.dart';

void main() async {
  setupeInjection();
  runApp(App());

  await Firebase.initializeApp();
  FirebaseFirestore.instance.collection('product').doc().set({
    'name': 'Joice',
    'phone': '(44) 9 9999-9999',
    'e-mail': 'joice@email.com'
  });
}
