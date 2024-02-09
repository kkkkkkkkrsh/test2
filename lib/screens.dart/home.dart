import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
@override
State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

final List<String> companies = [
'TOEFL',
'IELTS',
'GMAT',
'Company D',
'Company E',
'Company F',
'Company G',
'Company H',
'Company I',
'Company J',
];

List<Map<String, dynamic>> data = [
{
'name': 'Explore Universities',
'details': 'Explore 2000+ foregin univercities effortlessly with convenient filtrring and sorting',
'imageUrl': 'https://img.freepik.com/premium-psd/building-university-education-side-view-3d-icon-rendering-illustration-transparent-background_557469-1204.jpg?w=360',
},
{
'name': 'Test Preparation',
'details': 'Tailor your GRE prep with live classes, mock test, practice questions, and more.',
'imageUrl': 'https://img.freepik.com/free-vector/3d-cartoon-style-checklist-with-pen-icon-curved-sheet-paper-list-with-completed-tasks-flat-vector-illustration-time-management-planning-organization-concept_778687-984.jpg?size=338&ext=jpg&ga=GA1.1.632798143.1706140800&semt=ais',
},
{
'name': 'College Matchmaker',
'details': 'Discover ideal universities and programs using AI to match your profile',
'imageUrl': 'https://static.vecteezy.com/system/resources/previews/010/871/837/original/3d-message-icon-png.png',
},
{
'name': 'Scholarship',
'details': 'Explore 2000+ foreign universities effortlessly with convenient filtering and sorting',
'imageUrl': 'https://i.pinimg.com/originals/15/a1/ed/15a1ede253267efaedb00a08f9761cf3.jpg',
},
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Home"),
),
body: Container(
child: Expanded(
child: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
children: [
Icon(Icons.location_on),
Text("Current Location"),
Icon(Icons.arrow_drop_down),
Spacer(),
CircleAvatar(
backgroundImage: NetworkImage(
"https://randomuser.me/api/portraits/men/1.jpg"), // Replace with actual URL for user picture
),
],
),

),

CarouselSlider(
items: [
Image.network(
'https://img.freepik.com/free-photo/aesthetic-retro-vaporwave-landscape_23-2148949194.jpg'), // Replace with actual URL for carousel image 1
Image.network(
'https://t3.ftcdn.net/jpg/04/91/22/40/360_F_491224085_CxIX0wE0okzNaBuzWkmGJHdMvBQq3zUt.jpg'), // Replace with actual URL for carousel image 2
Image.network(
'https://www.shutterstock.com/image-photo/autumn-natural-background-blue-purple-260nw-2193187405.jpg'), // Replace with actual URL for carousel image 3
],
options: CarouselOptions(
height: 200,
enlargeCenterPage: true,
autoPlay: true,
aspectRatio: 16 / 9,
autoPlayCurve: Curves.fastOutSlowIn,
enableInfiniteScroll: true,
autoPlayAnimationDuration: Duration(milliseconds: 200),
viewportFraction: 0.8,
),
),
SizedBox(height: 5,),
Container(
height: 50,
child: ListView.builder(
scrollDirection: Axis.horizontal,
itemCount: companies.length,
itemBuilder: (BuildContext context, int index) {
return Padding(
padding: const EdgeInsets.all(8.0),
child: Container(
decoration: BoxDecoration(
color: Color.fromARGB(255, 93, 0, 159),
borderRadius: BorderRadius.circular(10),
),
padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
child: Center(
child: Text(
companies[index],
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontWeight: FontWeight.bold,
),
),
),
),
);
},
),
),

SizedBox(height: 10,),
Center(child: Text('Navigating your global classroom', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
SizedBox(height: 5,),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 10),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(height: 2, width:  150, color: Colors.black,),
CircleAvatar(radius: 5, backgroundColor: Colors.black,),
Container(height: 2, width:  150, color: Colors.black,),
],
),
),
SizedBox(height: 5,),
ListView.builder(
physics: NeverScrollableScrollPhysics(),
shrinkWrap: true,
itemCount: data.length, // Change this to your actual item count
itemBuilder: (BuildContext context, int index) {
return Padding(
padding: const EdgeInsets.all(10.0),
child: Container(

decoration: BoxDecoration(
color: Color.fromARGB(27, 96, 39, 176),
border: Border.all(color: Colors.grey),
borderRadius: BorderRadius.circular(10),
),
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
children: [

Expanded(
flex: 2,
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
data[index]['name'],
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 8),
Text(
data[index]['details'],
style: TextStyle(fontSize: 16),
),
],
),
),
),
Container( height: 100,
child: Stack(
children: [
Image.network(
data[index]['imageUrl']), // Replace with actual URL for map image
Align(
alignment: Alignment.bottomRight,
child: GestureDetector(
onTap: () {
// Add onPressed functionality for the arrow button
},
child: CircleAvatar(
backgroundColor: Color.fromARGB(255, 114, 39, 176),
child: Icon(Icons.arrow_forward_rounded, color: Colors.white,)),

),
),
],
),
),

],
),
),
),
);
},
),
SizedBox(height: 20,),
Center(child: Text('What Makes Us Shine?', style: TextStyle(fontSize: 18),)),
SizedBox(height: 5,),
Container(
height: 130,
child: ListView.builder(
scrollDirection: Axis.horizontal,
itemCount: data.length,
itemBuilder: (BuildContext context, int index) {
return Padding(
padding: const EdgeInsets.all(8.0),
child: Container(
decoration: BoxDecoration(
color: Color.fromARGB(255, 93, 0, 159),
borderRadius: BorderRadius.circular(10),
),
padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
CircleAvatar(
radius: 30,
child: Image.network(data[index]['imageUrl'])),
Text(
data[index]['name'],
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontWeight: FontWeight.bold,
),
),
],
),
),
),
);
},
),
),
SizedBox(height: 20,),
Container(child: Padding(
padding: const EdgeInsets.all(10.0),
child: Column(

children: [
Text('Ostello,the\nultimate\ncompanionfor\nevery student',
style: TextStyle(color: Color.fromARGB(255, 60, 11, 175), fontSize: 30),
),
Text('Made with ❤️ in India 🇮🇳', style: TextStyle(color: Color.fromARGB(255, 60, 11, 175), fontSize: 18),)
]),
),),
SizedBox(height: 20,),
],
),
),
),
),
);
}
}


