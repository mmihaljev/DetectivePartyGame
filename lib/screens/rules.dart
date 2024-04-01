import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class Rules extends StatefulWidget {
  const Rules({super.key});

  @override
  State<Rules> createState() => _RulesState();
}

class _RulesState extends State<Rules> {

  static StoryController controller = StoryController();
  var storyItems = [
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("lib/assets/1.jpg"),
          fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/2.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/3.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/4.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/5.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/6.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/7.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/8.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/9.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
    StoryItem(
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/1.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: StoryView(
        storyItems: storyItems,
        controller: controller,
        onComplete: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
