import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:
            false, // Prevent UI from being pushed by the keyboard
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 65, 6, 114)),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/login.svg',
                        height: 220,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      _container(
                        child: const TextField(
                          keyboardType: TextInputType
                              .emailAddress, // Input type specific to email
                          textInputAction: TextInputAction
                              .next, // 'Next' button on the keyboard
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email : ",
                            prefixIcon:
                                Icon(Icons.person), // Icon at the beginning
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _container(
                        child: const TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction
                              .done, // 'Next' button on the keyboard
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password : ",
                            prefixIcon: Icon(Icons.lock),
                            
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 10)),
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 33, 185))),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?  " , style: TextStyle(color: Color.fromARGB(255, 122, 33, 185)),),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(255, 122, 33, 185)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: 100,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  width: 120,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// ignore: unused_element
Container _container({required TextField child}) {
  return Container(
    width: 266, // Set fixed width for the text field
    padding: const EdgeInsets.only(top: 5),
    decoration: BoxDecoration(
      color: const Color.fromARGB(148, 217, 185, 244),
      borderRadius: BorderRadius.circular(50),
    ),
    child: child,
  );
}
