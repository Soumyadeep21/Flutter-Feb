import 'package:flutter/material.dart';
import 'package:flutter_feb/res/story_screen.dart';
import 'package:flutter_feb/src/story_route_generator.dart';

class AskNameScreen extends StatefulWidget {

  @override
  AskNameScreenState createState() {
    return new AskNameScreenState();
  }
}

class AskNameScreenState extends State<AskNameScreen> {

  TextEditingController nameController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  onStartAdventure(){
    print(nameController.text);
    Navigator.push(context, getRouteByStoryStage(StoryStage.page0,nameController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/main_title.png")
        ),
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter Your Name"
            ),
          ),
          RaisedButton(
              onPressed: ()=>onStartAdventure(),
              child: Text("START YOUR ADVENTURE"),
          )
        ],
      ),
    );
  }
}
