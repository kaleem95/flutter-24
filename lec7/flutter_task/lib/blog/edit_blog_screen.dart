import 'package:flutter/material.dart';

import 'package:flutter_task/blog/blog.dart';

class EditBlogScreen extends StatefulWidget {
  const EditBlogScreen({Key? key, required this.blog, }) : super(key: key);

  final Blog blog ;

  @override
  State<EditBlogScreen> createState() => _EditBlogScreenState();
}

class _EditBlogScreenState extends State<EditBlogScreen> {

  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final imageUrlController = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Blog blog = Blog(
        title: titleController.text,
        content: contentController.text,
        imageUrl: imageUrlController.text,
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Blog"),
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
                  editBlog();
                },
                child: const Text(
                  "Update",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void editBlog() {
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
