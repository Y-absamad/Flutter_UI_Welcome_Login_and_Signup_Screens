import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                          'SIGNUP',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 65, 6, 114)),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/signup.svg',
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
                            prefixIcon:
                                Icon(Icons.lock), // Icon at the beginning
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
                                    horizontal: 98, vertical: 9)),
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 33, 185))),
                        child: const Text(
                          'Signup',
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
                          const Text("Already have an account?  " , style: TextStyle(color: Color.fromARGB(255, 122, 33, 185)),),
                          GestureDetector(
                            onTap: () {Navigator.pushNamed(context , '/login');},
                            child: const Text(
                      
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.bold , color : Color.fromARGB(255, 122, 33, 185)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const SizedBox(
                        width: 250,
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 0.2,
                              color: Color.fromARGB(255, 122, 33, 185)
                            )),
                            Text(
                              " OR ",
                              style: TextStyle(fontWeight: FontWeight.bold , color:Color.fromARGB(255, 122, 33, 185) ),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 0.2,
                              color:Color.fromARGB(255, 122, 33, 185)
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              'assets/icons/facebook.svg',
                              height: 20,
                              color: const Color.fromARGB(255, 122, 33, 185),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              'assets/icons/google-plus.svg',
                              height: 20,
                              color: const Color.fromARGB(255, 122, 33, 185),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              'assets/icons/twitter.svg',
                              height: 20,
                              color: const Color.fromARGB(255, 122, 33, 185),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(
                  'assets/icons/signup_top.png',
                  width: 100,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_bottom.png',
                  width: 75,
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
