import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/feed.dart';

class Intro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to Harp!",
          body: '',
          decoration: PageDecoration(
            pageColor: Styles.backgroundColor,
            titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
            bodyAlignment: Alignment.center,
          ),
        ),
        PageViewModel(
          titleWidget: RichText(
            text: TextSpan(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),
              children: [
                TextSpan(text: 'Sign in ', style: TextStyle(color: Styles.secondaryColor, )),
                TextSpan(text: 'to start sharing!', style: TextStyle(color: Colors.white)),
              ]
            ),
          ),
          bodyWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                //login with facebook
                TextButton(
                  onPressed: (){},
                  child: Container(
                    color: Color(0xff1877f2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/flogo.png', height: 50, width: 50),
                        Text('Log in with Facebook', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16))
                      ],
                    )
                  ),
                ),

                //login with google
                TextButton(
                  onPressed: (){},
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset('assets/images/google.png', height: 32, width: 32),
                        ),
                        Text('Log in with Google', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16))
                      ],
                    )
                  ),
                ),
              ],
            ),
          ),
          decoration: PageDecoration(
            pageColor: Styles.backgroundColor,
            titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
            bodyAlignment: Alignment.center,
          ),
          footer: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Colors.white.withOpacity(0.5)),
              children: [
                TextSpan(text: 'By signing in, you agree to our '),
                TextSpan(text: 'Terms of Service ', style: TextStyle(decoration: TextDecoration.underline)),
                TextSpan(text: 'and our '),
                TextSpan(text: 'Privacy Policy', style: TextStyle(decoration: TextDecoration.underline)),
              ]
            ),
          )
        )
      ],
      next: const Icon(Icons.east_rounded),
      nextColor: Colors.white,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16)),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16)),
      onDone: () {
      // When done button is pressed
        // Navigator.push(context, 
        //   CupertinoPageRoute(
        //     builder: (BuildContext context) => new Feed(),
        //   )
        // );
      },
      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        activeSize: const Size(18.0, 9.0),
      ),
    );
  }
}
