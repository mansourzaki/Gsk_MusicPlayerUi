import 'package:flutter/material.dart';

class BottomMusicBar extends StatelessWidget {
  const BottomMusicBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.04),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(20), // Image border
          child: SizedBox(
            width: 54,
            height: 54,
            child: Image.asset('assets/images/dragons.jpg', fit: BoxFit.cover),
          ),
        ),
        title: const Text('014 The Art of Communication'),
        subtitle: const Text('The Futur'),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            size: 32,
            Icons.pause,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
