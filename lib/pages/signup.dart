import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Let`s Get Started!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  fontSize: 25.5,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      maxLength: 40,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        label: Text('Name'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please provide a name';
                        }
                        if (value.length < 2) {
                          return 'Name should be atleast 3 letters long';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        name = value!;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        label: Text('Email'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please provide a valid email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value!;
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        label: Text('Password'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please provide a password';
                        }
                        if (value.length < 8) {
                          return 'Password should be atleast 8 characters long';
                        }
                        if (value.length > 20) {
                          return 'Password should be atleast 20 characters long';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          print(name);
                          print(email);
                          print(password);
                        }
                      },
                      child: Text('Sign Up'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent[200],
                        foregroundColor: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                              color: Colors.pinkAccent,
                            )),
                        SizedBox(
                          width: 10,
                          height: 90.0,
                        ),
                        Text("or"),
                        SizedBox(width: 10),
                        Expanded(child: Divider(
                          color: Colors.pinkAccent,
                        ))
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        InkWell(
                          child: Text(
                            'Log In Here',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          onTap: () =>
                              Navigator.popAndPushNamed(context, '/login'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}