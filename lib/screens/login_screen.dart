import 'package:devlogie_product_card/components/login_form.dart';
import 'package:devlogie_product_card/utils/color_constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            color: ColorConstants.inputBoxIcon,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/mountain_bacground.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: _size.height * 0.1),
            child: Text(
              'Login',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
        Positioned(
          bottom: _size.height * 0.07,
          child: Container(
              height: _size.height * 0.5,
              width: _size.width,
              decoration: BoxDecoration(
                color: ColorConstants.white,
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: _size.width * 0.05,
                  vertical: _size.height * 0.02),
              child: const LoginForm()),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: _size.width,
            height: _size.height * 0.20,
            color: ColorConstants.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: OutlinedButton(
                    clipBehavior: Clip.hardEdge,
                    onPressed: () {
                      print(
                          'Biometrical authentication slide up panel should be opened');
                    },
                    child: const Text('Biometric authentication'),
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(335, 50),
                      primary: ColorConstants.buttonBlue,
                      backgroundColor: Colors.transparent,
                      textStyle: const TextStyle(fontSize: 15),
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton.icon(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {
                        print('Facebook login should be opened here');
                      },
                      icon: const Icon(Icons.facebook),
                      label: const Text('Sign In'),
                      style: OutlinedButton.styleFrom(
                        primary: ColorConstants.buttonBlue,
                        backgroundColor: Colors.transparent,
                        textStyle: const TextStyle(fontSize: 15),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    OutlinedButton.icon(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {
                        print('Google sign in should be opened here');
                      },
                      label: const Text('Sign In'),
                      icon: const Icon(Icons.g_mobiledata_rounded),
                      style: OutlinedButton.styleFrom(
                        primary: ColorConstants.buttonBlue,
                        backgroundColor: Colors.transparent,
                        textStyle: const TextStyle(fontSize: 15),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    OutlinedButton(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {
                        print('Sign up panel should be opened here');
                      },
                      child: const Text('Sign Up'),
                      style: OutlinedButton.styleFrom(
                        primary: ColorConstants.buttonBlue,
                        backgroundColor: Colors.transparent,
                        textStyle: const TextStyle(fontSize: 15),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
