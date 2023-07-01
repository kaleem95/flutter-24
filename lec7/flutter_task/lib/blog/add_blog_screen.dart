import 'package:flutter/material.dart';
import 'package:flutter_task/blog/blog.dart';

class AddBlogScreen extends StatefulWidget {
  const AddBlogScreen({Key? key}) : super(key: key);

  @override
  State<AddBlogScreen> createState() => _AddBlogScreenState();
}

class _AddBlogScreenState extends State<AddBlogScreen> {

  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final imageUrlController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Blog"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: contentController,
              decoration: const InputDecoration(
                labelText: "content",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: imageUrlController,
              decoration: const InputDecoration(
                labelText: "ImageUrl",
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  addBlog();
                },
                child: const Text(
                  "Add",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void addBlog() {
    String title = titleController.text;
    String content = contentController.text;
    String imageUrl = imageUrlController.text;

    Blog blog = Blog(
        title: title,
        content: content,
        imageUrl: imageUrl
    );

    Navigator.pop(context, blog);
  }
}
