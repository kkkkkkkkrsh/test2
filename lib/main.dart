
import 'package:fashion_social_media/Constants/colors.dart';
import 'package:fashion_social_media/bottom_nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



void main() async{

WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
SystemChrome.setSystemUIOverlayStyle(
SystemUiOverlayStyle(
statusBarColor: primaryColor, 
systemNavigationBarIconBrightness: Brightness.light, 
),
);

runApp( 
  
   MyApp());
}
class MyApp extends StatefulWidget {
MyApp({super.key});
@override
State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {



@override
void initState() {


super.initState();
}

@override
Widget build(BuildContext context) {
return ResponsiveSizer( 
builder: (context, orientation, screenType) {
return  MaterialApp(
debugShowCheckedModeBanner: false,
home: 
 BottomNavBar()
);
}
);
}
}
