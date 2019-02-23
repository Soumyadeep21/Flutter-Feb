import 'package:flutter/material.dart';
import 'package:flutter_feb/res/story_screen.dart';
import 'package:flutter_feb/res/strings.dart';

enum StoryStage{page0, page1, page2, page3, page4, page5, page6}


Function buttonFunction({@required StoryStage stage,@required BuildContext context,@required String name}){
  return (){
    Navigator.pushReplacement(context, getRouteByStoryStage(stage, name));
  };
}

MaterialPageRoute getRouteByStoryStage(StoryStage stage,String name){
  return MaterialPageRoute(builder: (BuildContext context){

    Function buttonFunction({@required StoryStage stage}){
      return (){
        Navigator.pushReplacement(context, getRouteByStoryStage(stage, name));
      };
    }

    switch(stage){
      case StoryStage.page0:
        return StoryScreen(
          storyText: page0(name: name),
          button1Text: page0_choice1,
          button2Text: page0_choice2,
          button1Function: buttonFunction(stage: StoryStage.page1),
          button2Function: buttonFunction(stage: StoryStage.page2),
          assetImagePath: "assets/images/page0.png",
        );
        break;
      case StoryStage.page1:
        return StoryScreen(
          storyText: page1(name: name),
          button1Text: page1_choice1,
          button2Text: page1_choice2,
          button1Function: buttonFunction(stage: StoryStage.page3),
          button2Function: buttonFunction(stage: StoryStage.page4),
          assetImagePath: "assets/images/page1.png",
        );
        break;
      case StoryStage.page2:
        return StoryScreen(
          storyText: page2(name: name),
          button1Text: page2_choice1,
          button2Text: page2_choice2,
          button1Function: buttonFunction(stage: StoryStage.page1),
          button2Function: buttonFunction(stage: StoryStage.page6),
          assetImagePath: "assets/images/page2.png",
        );
        break;
      case StoryStage.page3:
        return StoryScreen(
          storyText: page3(name: name),
          button1Text: page3_choice1,
          button2Text: page3_choice2,
          button1Function: buttonFunction(stage: StoryStage.page4),
          button2Function: buttonFunction(stage: StoryStage.page5),
          assetImagePath: "assets/images/page3.png",
        );
        break;
      case StoryStage.page4:
        return StoryScreen(
          storyText: page4(name: name),
          button1Text: page4_choice1,
          button2Text: page4_choice2,
          button1Function: buttonFunction(stage: StoryStage.page5),
          button2Function: buttonFunction(stage: StoryStage.page6),
          assetImagePath: "assets/images/page4.png",
        );
        break;
      case StoryStage.page5:
        return StoryScreen(
            button1Text: null,
            button2Text: play_again_buttontext,
            storyText: page5(name: name),
            button1Function: null,
            button2Function: buttonFunction(stage: StoryStage.page0),
            assetImagePath: "assets/images/page5.png"
        );
        break;
      case StoryStage.page6:
        return StoryScreen(
            button1Text: null,
            button2Text: play_again_buttontext,
            storyText: page6(name: name),
            button1Function: null,
            button2Function: buttonFunction(stage: StoryStage.page0),
            assetImagePath: "assets/images/page6.png"
        );
    }
  });
}