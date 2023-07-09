import 'package:flutter/src/material/time.dart';
import 'package:task_four/messages_screen.dart ';
import 'package:flutter/material.dart';
import 'lists.dart';

class Message {
  String? imageUrl;
  String? name;
  String? time;
  String? content;

  Message(
      {required String imageUrl,
      required String time,
      required String content, required String name});
}
