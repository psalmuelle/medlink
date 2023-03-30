import 'package:flutter/material.dart';
import 'package:medlink/config/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medlink/widget_tree.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediLink',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home:const WidgetTree(),
    );
  }
}
