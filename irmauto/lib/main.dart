import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IRM AUTO',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, //<-- SEE HERE
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  final String title = 'IRM Auto';

  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  bool isLoading = false;

  // Email Validation
  final emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  bool validateEmail(String email) {
    final regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }

  // Sign In Function
  void login() {
    if (_formKey.currentState!.validate()) {
      isLoading = true;
      setState(() {});
      Future.delayed(const Duration(seconds: 2), () {
        isLoading = false;
        setState(() {});
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 5, 5),
          title: Image.asset('assets/IRM.png', fit: BoxFit.cover),

          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,

              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(


  
          
            child: Column(
          
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              SizedBox(
                height:369,
                width: double.infinity,

                child: Image.asset("assets/voi.png",  fit: BoxFit.contain),
              ),
                Container(
    margin: const EdgeInsets.only(left: 0, top:0,right: 0, bottom: 0),
                    padding: EdgeInsets.only(left: 60, top: 20, right: 60, bottom: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(80),
                        topLeft: Radius.circular(80),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                alignment: Alignment.topLeft,

                                // Set the margin here
                                child: const Text("E-mail",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: 'Inter',
                                    )),
                              ),
                              TextFormField(
                                controller: _emailController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Your email';
                                  }
                                  if (!validateEmail(_emailController.text)) {
                                    return 'Please Enter Valid Email';
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    filled: true,
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(36.0),
                                      borderSide: BorderSide(
                                        color: Colors
                                            .black, // Set the color of the border
                                      ),
                                    ),
                                    fillColor: Colors.white,
                                    focusColor: Colors.white),
                              ),
                              const SizedBox(height: 25),
                              Container(
                                margin: EdgeInsets.all(10),
                                alignment: Alignment.topLeft,

                                // Set the margin here
                                child: const Text("Mot de passe",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Inter',
                                      overflow: TextOverflow.ellipsis,
                                    )),
                              ),
                              TextFormField(
                                controller: _passwordController,
                                obscureText: showPassword ? false : true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Your Password';
                                  }
                                  if (value.length < 6) {
                                    return 'Password must be at least 6 characters';
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    filled: true,
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          showPassword = !showPassword;
                                        });
                                      },
                                      child: Icon(
                                        showPassword
                                            ? Icons.visibility_off
                                            : Icons.remove_red_eye,
                                        color: Colors.black,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(36.0),
                                      borderSide: BorderSide(color: Colors.red),
                                    ),
                                    fillColor: Colors.white,
                                    focusColor: Colors.white),
                              ),
                              const SizedBox(height: 50),
                              InkWell(
                                onTap: () {
                                  login();
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(36),
                                  ),
                                  child: Center(
                                    child: isLoading
                                        ? const Padding(
                                            padding: EdgeInsets.all(24.0),
                                            child: CircularProgressIndicator(
                                              color: Colors.red,
                                            ),
                                          )
                                        : const Text(
                                            'Se connecter',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Inter',
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Text(
                                  "Vous n'avez pas encore crée un compte ?",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Divider(
                                  height: 2,
                                  thickness: 2,
                                  color: Colors.red,
                                  indent: 40,
                                  endIndent: 45,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(12),
          height: 50.0,
          color: Colors.black,
          child: Text(
            "® IRM-Auto 2023 |All rights reserved | Powered by IronHoster Inc.",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

