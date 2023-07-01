import 'package:flutter/material.dart';
 import 'package:story_view/story_view.dart';

import 'package:flutter_task/blog/story_view_screen.dart';




class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({super.key});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {


  final controller = StoryController();

  @override
  Widget build(context) {
    List<StoryItem> storyItems = [
      StoryItem.text(title: 'Welcome in flutter course', backgroundColor: Colors.blueGrey),
      StoryItem.pageImage(url: 'https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg', controller: controller,
        duration: const Duration(seconds: 10),
      ),
      StoryItem.pageImage(url: 'https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg', controller: controller,),
      StoryItem.pageImage(url: 'https://phantom-marca.unidadeditorial.es/e78616bbda77fe6fbc6b1ed5a05d3232/resize/828/f/webp/assets/multimedia/imagenes/2023/06/21/16873550466244.png', controller: controller,),
      StoryItem.pageImage(url: 'https://burst.shopifycdn.com/photos/two-customized-cars-rolling-through-a-city-street.jpg', controller: controller,),




    ]; // your list of stories

    return StoryView(
        storyItems: storyItems,
        controller: controller, // pass controller here too
        repeat: true, // should the stories be slid forever

        onComplete: () {
          Navigator.pop(context);
        },
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        } // To disable vertical swipe gestures, ignore this parameter.
      // Preferrably for inline story view.
    );
  }

}
