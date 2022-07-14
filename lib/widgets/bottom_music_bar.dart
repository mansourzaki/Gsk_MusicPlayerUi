import 'package:flutter/material.dart';

class BottomMusicBar extends StatefulWidget {
  const BottomMusicBar({Key? key}) : super(key: key);

  @override
  State<BottomMusicBar> createState() => _BottomMusicBarState();
}

class _BottomMusicBarState extends State<BottomMusicBar> {
  bool _isSelected = false;
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
          onPressed: () {
            _isSelected = !_isSelected;
            setState(() {
                
            });
          },
          icon: _isSelected
              ? Icon(
                  size: 32,
                  Icons.play_arrow,
                  color: Colors.black,
                )
              : Icon(
                  size: 32,
                  Icons.pause,
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}
