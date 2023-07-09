// import 'package:flutter/material.dart';
// import 'package:task_four/message.dart';
//
// import 'main.dart';
//
// class MessagesScreen extends StatefulWidget {
//   const MessagesScreen({super.key});
//
//   @override
//   State<MessagesScreen> createState() => _MessagesScreenState();
// }
//
//
// class _MessagesScreenState extends State<MessagesScreen> {
//   List<Message> messages = [
//     Message(
//       imageUrl:
//           "https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg",
//       name: "Piano",
//       time: '09:15',
//       content:
//           "a large keyboard musical instrument with a wooden case enclosing a soundboard and metal strings, which are struck by hammers when the keys are depressed. The strings' vibration is stopped by dampers when the keys are released and can be regulated for length and volume by two or three pedals.",
//     ), // 0
//     Message(
//       imageUrl:
//       "https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg",
//       name: "Piano",
//       time: '09:15',
//       content:
//       "a large keyboard musical instrument with a wooden case enclosing a soundboard and metal strings, which are struck by hammers when the keys are depressed. The strings' vibration is stopped by dampers when the keys are released and can be regulated for length and volume by two or three pedals.",
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Messages',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.normal,
//             fontSize: 20,
//           ),
//         ),
//       ),
//       body: Expanded(
//         child: ListView.builder(
//             itemCount: messages.length,
//           scrollDirection: Axis.vertical,
//             itemBuilder: (context, index) {
//               return Scaffold(
//                 body:    messageitem(index),
//               );
//             }),
//       ),
//     );
//   }
//
//   Widget messageitem(int index) {
//     final Message messagenum = messages[index];
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//
//           child: Row(
//
//             children: [
//               Container(
//
//                 child: CircleAvatar(
//
//                   radius: 30,
//                   child: Image.network(messagenum.imageUrl),
//                     ),
//               ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(messagenum.name),
//             ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(messagenum.content),
//
//
//
//                // Text(messagenum.time)
//               ),
//             ],
//
//           ),
//         ),
//       ],
//     );
//   }
// }
