import 'package:flutter/material.dart';
import 'package:flutter_feb/res/strings.dart';

MaterialPageRoute dummyStoryScreenRoute() =>
    MaterialPageRoute(builder: (_)=> StoryScreen(
      assetImagePath: "assets/images/page0.png",
      button1Function: (){
        print("1");
      },
      button2Function: (){
        print("2");
      },
      button2Text: "Button 2",
      button1Text: "Button 1",
      storyText: page2(name: "Soumyadeep"),
    ));


class StoryScreen extends StatelessWidget {

  final String button1Text,button2Text,storyText,assetImagePath;
  final Function button1Function,button2Function;

  const StoryScreen(
      {Key key,
        @required this.button1Text,
        @required this.button2Text,
        @required this.storyText,
        @required this.button1Function,
        @required this.button2Function,
        @required this.assetImagePath,
      }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Silver Martian"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(assetImagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(storyText,style: TextStyle(fontSize: 20),),
            ),
            Spacer(),
            Visibility(
              visible: button1Text != null,
                child: StoryPageButton(
                    buttonFunction: button1Function,
                    buttonText: button1Text
                )
            ),
            StoryPageButton(buttonFunction: button2Function, buttonText: button2Text)
          ],
        ),
      ),
    );
  }
}

class StoryPageButton extends StatelessWidget {

  final Function buttonFunction;
  final String buttonText;

  const StoryPageButton({Key key, @required this.buttonFunction, @required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: buttonFunction,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Text(buttonText),
        ),
      ),
      color: Colors.blueGrey,
    );
  }
}
