import 'package:apploans/common/services/storage_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class Global{
  static late StorageServices storageServices;
  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp();
  }
}