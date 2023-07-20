// ignore_for_file: use_build_context_synchronously

import 'package:catalog_app/utils/Routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
    const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    String name = '';
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
   moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, Routes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }
  @override
 

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "welcome to ",
              style:  TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter you Name',
                  labelText: 'UserName',
                ),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "UserName can not be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter you password',
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password can not be empty";
                  } else if (value.length < 6) {
                    return "Make sure that password have 6 letters";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () => moveToHome(context),
              child: AnimatedContainer(
                duration:const Duration(seconds: 1),
                height: 50,
                width: changebutton ? 50 : 150,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                ),
                child: Center(
                  child: changebutton
                      ? const Icon(Icons.done, color: Colors.white)
                      : const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
