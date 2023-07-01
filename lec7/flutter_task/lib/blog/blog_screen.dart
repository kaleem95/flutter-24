import 'package:flutter/material.dart';

import 'package:flutter_task/blog/blog.dart';
import 'package:flutter_task/blog/add_blog_screen.dart';
import 'package:flutter_task/blog/edit_blog_screen.dart';
import 'package:flutter_task/blog/story_view_screen.dart';


class BlogScreen1 extends StatefulWidget {
  const BlogScreen1({super.key});

  @override
  State<BlogScreen1> createState() => _BlogScreen1State();
}

class _BlogScreen1State extends State<BlogScreen1> {

  final String imageUrl = "https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg";
  final String name = "Ahmed Mohammed Mohammed";

  // List<String> titles =[];
  // List<String> contents =[];
  // List<String> images =[];


  // 0 => Blog(this.title, this.content, this.imageUrl);
  // 1 => Blog(this.title, this.content, this.imageUrl);
  // 2 =>Blog(this.title, this.content, this.imageUrl);

  // blog[1].title
  List<Blog> blogs = [

    Blog(
      title: "Piano",
      content:
      "a large keyboard musical instrument with a wooden case enclosing a soundboard and metal strings, which are struck by hammers when the keys are depressed. The strings' vibration is stopped by dampers when the keys are released and can be regulated for length and volume by two or three pedals.",
      imageUrl:
      "https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg",
    ), // 0
    Blog(
      title: "Titanic submarine",
      content:
      "Missing Titanic submarine LIVE: Can bodies be retrieved after implosion? Experts weigh in",
      imageUrl:
      "https://phantom-marca.unidadeditorial.es/e78616bbda77fe6fbc6b1ed5a05d3232/resize/828/f/webp/assets/multimedia/imagenes/2023/06/21/16873550466244.png",
    ), // 1
    Blog(
      title: "Customization Cars",
      content:
      "Two Customized Cars Rolling Through A City Street Photo Photo of two customized cars on a city side street. One car is raised up and the other is very low.",
      imageUrl:
      "https://burst.shopifycdn.com/photos/two-customized-cars-rolling-through-a-city-street.jpg",
    ), // 2


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToAddBlogscreen(),
        backgroundColor: blogs.length > 1 ? Colors.white : Colors.blueGrey,
        child: Icon(Icons.add,
          color: blogs.length > 1 ? Colors.blueGrey : Colors.white,

        ),
      ),
      body:
          Column(
              children: [
              SizedBox(
              height: 100,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoryViewScreen(),
                        ),
                      );
                    },
                  child: ListView.builder(
                      itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(imageUrl),
                                ),
                                CircleAvatar(
                                  radius: 11,
                                  backgroundColor: Colors.white70,
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                          ),

                          Text(
                            name.length > 8 ? "${name.substring(0, 8)}..." : name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      );
                    }),
                ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: blogs.length,
                itemBuilder: (context, index) {
                  return blogItem(index);
                },
              ),
            ),
          ],
        ),

    );
  }

  Widget blogItem(int index) {
    // String title =blogs[index].title;
    // String content = blogs[index].content;
    // String imageUrl = blogs[index].imageUrl;

    final Blog blog = blogs[index];

    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            child: Image.network(
              blog.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    blog.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                IconButton(onPressed: () {
                  navigateToEditBlogScreen(index);
                },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                IconButton(onPressed: () {
                  blogs.removeAt(index);
                  setState(() {});
                },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              blog.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),

    );
  }

  navigateToAddBlogscreen() {
    Navigator.push(context,
      MaterialPageRoute(builder:
          (context) => AddBlogScreen(),
      ),
    ).then((value) {
      if (value == null) return;
      blogs.add(value);
      setState(() {});
    });
  }


  navigateToEditBlogScreen(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditBlogScreen(blog: blogs[index],),
      ),
    ).then((value){
            if(value == null) return;
            blogs[index]= value ;
            setState(() {});
   });

  }
}
