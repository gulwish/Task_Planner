
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_planner/db_helper/DbHelper.dart';
import 'package:task_planner/screens/SplashScree.dart';
import 'package:task_planner/shared_services/ThemeServices.dart';
import 'package:task_planner/screens/completed_task.dart';
import 'widget_builder/Themes.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  await GetStorage.init();             
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      title: 'List.do',
      debugShowCheckedModeBanner: false,
      theme:Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme ,
      home: SplashScreen(),
    );  
  }

  // Splash()async {
  //   await Future.delayed(Duration(seconds: 2));
  //   Navigator.pushReplacement(
  //     context, MaterialPageRoute(
  //       builder:(context)=>Homepage())
  //       );
  // }

}
