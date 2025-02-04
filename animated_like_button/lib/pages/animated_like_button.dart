import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class AnimatedLikeButton extends StatefulWidget {
  const AnimatedLikeButton({super.key});

  @override
  State<AnimatedLikeButton> createState() => _AnimatedLikeButtonState();
}

class _AnimatedLikeButtonState extends State<AnimatedLikeButton> {
  int numberOfLike = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(child: Column(
          children: [
            const SizedBox(height: 50,),
            LikeButton(
              likeCount: numberOfLike,
              countPostion: CountPostion.right,
              size: 80,
              likeBuilder: (isLiked) {
                return Icon(Icons.bookmark,color: isLiked ? Colors.deepPurple: Colors.grey,size: 80,);
              },
            ),
            const SizedBox(height: 30,),
            LikeButton(
              size: 80,
              countPostion: CountPostion.right,
              likeCount: numberOfLike,
            ),
            const SizedBox(height: 30,),
            LikeButton(
              size: 80,
              countPostion: CountPostion.right,
              likeCount: numberOfLike,
              likeBuilder: (isLiked) {
                return Icon(Icons.thumb_up,color: isLiked ? Colors.blue: Colors.grey,size: 80,);
              },
            ),
            const SizedBox(height: 30,),
            LikeButton(
              size: 80,
              countPostion: CountPostion.right,
              likeCount: numberOfLike,
              bubblesColor: const BubblesColor(dotPrimaryColor: Colors.purple, dotSecondaryColor: Colors.orange),
              circleColor: const CircleColor(start: Colors.orange, end: Colors.pink),
              likeBuilder: (isLiked) {
                return Icon(Icons.thumb_down,color: isLiked ? Colors.blue: Colors.grey,size: 80,);
              },
            )
          ],
        ),),
      ),
    );
  }
}