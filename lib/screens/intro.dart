import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/home.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class Intro extends StatelessWidget{

  //sign-in with Google
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential user = await FirebaseAuth.instance.signInWithCredential(credential);
    if(user.additionalUserInfo.isNewUser){
      //post new user to database
      print('New User!');
    }
    // Once signed in, return the UserCredential
    return user;
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final AccessToken result = await FacebookAuth.instance.login();
    // Create a credential from the access token
    final facebookAuthCredential = FacebookAuthProvider.credential(result.token);
    // Once signed in, return the UserCredential
    UserCredential user =  await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);

    if(user.additionalUserInfo.isNewUser){
      print('New User!');
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(text: TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: 'Sign in ', style: TextStyle(color: Styles.secondaryColor)),
                TextSpan(text: '\nto get started!')
              ]
            )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column( 
                children: [
                  SignInButton(Buttons.GoogleDark, onPressed: ()  async {

                    await signInWithGoogle();
                    FirebaseAuth auth = FirebaseAuth.instance;
                    if(auth.currentUser != null){
                      Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) => Home()));
                    } else {
                      print('Sign-in failed; please try again!');
                    }
                    
                  }),
                  SignInButton(Buttons.Facebook, onPressed: () async {

                    await signInWithFacebook();
                    FirebaseAuth auth = FirebaseAuth.instance;
                    if(auth.currentUser != null){
                      Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) => Home()));
                    } else {
                      print('Sign-in failed; please try again!');
                    }
                  }),
                  SignInButton(Buttons.Apple, onPressed: (){})
                ]
              ),
            ),
            Text('By signing in, you agree to our \nTerms of Service and our Privacy Policy',
              style: TextStyle(color: Colors.white.withOpacity(0.5),),
              textAlign: TextAlign.center,
            ),
          ],
        )
      )
    );
  }
}
