import 'package:devlogie_product_card/utils/color_constants.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _emailValidator(String? value) {
      if (value == null || value.isEmpty) {
        return 'E-mail cannot be empty';
      } else if (!value.contains('@')) {
        return 'E-mail must contain \'@\' sign. ';
      }
      return null;
    }

    _passwordValidator(String? value) {
      if (value == null || value.isEmpty) {
        return 'Password cannot be empty';
      }
      return null;
    }

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) => _emailValidator(value),
            style: Theme.of(context).textTheme.bodyText1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon:
                  const Icon(Icons.person, color: ColorConstants.inputBoxIcon),
              fillColor: ColorConstants.inputFillColor,
              filled: true,
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextFormField(
              validator: (value) => _passwordValidator(value),
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(
                  Icons.lock,
                  color: ColorConstants.inputBoxIcon,
                ),
                fillColor: ColorConstants.inputFillColor,
                filled: true,
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: OutlinedButton(
              clipBehavior: Clip.hardEdge,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('asd'),
                  ));
                }
              },
              child: const Text('Sign In'),
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(335, 50),
                primary: ColorConstants.white,
                backgroundColor: ColorConstants.buttonBlue,
                textStyle: const TextStyle(fontSize: 18),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: OutlinedButton(
              clipBehavior: Clip.hardEdge,
              onPressed: () {
                print('New password request page should be called here');
              },
              child: const Text('Forgot password?'),
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
        ],
      ),
    );
  }
}
