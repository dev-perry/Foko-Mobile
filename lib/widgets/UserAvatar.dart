import 'package:flutter/material.dart';
import 'package:foko/functions/storage.dart';

class UserAvatar extends StatefulWidget {
  UserAvatar({@required this.id});
  final String id;
  @override
  _UserAvatarState createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  String imageURL;
  void image() async{
    String url = await UserAvatars().getImage(widget.id);
    setState(() {
      imageURL = url;
    });
  }

  @override
  void initState() {
    super.initState();
    image();
  }
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,//rememember to change this to grey when testing resizing
      backgroundImage: (imageURL != null) ? NetworkImage(imageURL) : null,
    );
  }
}
