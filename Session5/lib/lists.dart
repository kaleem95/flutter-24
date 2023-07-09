import 'package:flutter/material.dart';
import 'package:task_four/message.dart';

class ListViewScreen extends StatefulWidget {
    ListViewScreen({super.key});

   @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {


  List<Message> messages = [
    Message(
      imageUrl:
      "https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg",
      name: "Piano",
      time: '09:15',
      content:
      "a large keyboard musical instrument with a wooden case enclosing a soundboard and metal strings, which are struck by hammers when the keys are depressed. The strings' vibration is stopped by dampers when the keys are released and can be regulated for length and volume by two or three pedals.",
    ), // 0

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Messages',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
      ),

      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: messages.length,
                itemBuilder: (BuildContext context, index) {
                  return messageitem(index);
                }),
          ),
        ],
      ),
    );
  }

  Widget messageitem(index) {



    Message messagenum = messages[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right: 5,left: 0,bottom: 20),
            child: ListTile(
              minVerticalPadding:5 ,
              leading:  CircleAvatar(
                radius: 30,


                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/04/25/14/30/man-6206540_1280.jpg',
                  ),
                ),
              ),
              trailing: Icon(
                (Icons.arrow_forward_ios_rounded),
              ),
              title: Row(
                children: [
                   Text(
                    '${messagenum.name}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        '09:15',
                      )),
                ],
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 220),
                    child: Text(
                      'I love that idea , its great! I love that idea ,'
                          ' its great! I love that idea , its great!',
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}






