import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                'HEY \nTHERE !',
                style: TextStyle(color: Colors.black, fontSize: 45),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color(0xFF4C505B),
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFF4C505B),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                          child: Text(
                            'Sign Up' ,
                          style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xFF4C505B),
                        ),

                        ),
                        ),
                        TextButton(onPressed: () {}, child: Text('Forgot Password?' , style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xFF4C505B),
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
        ),
      ),
    );
  }
}
