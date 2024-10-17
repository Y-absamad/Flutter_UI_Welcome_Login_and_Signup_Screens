import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 50),
                      child: const Text(
                        'Welcome',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 65, 6, 114)),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/chat.svg',
                      height: size.height * 0.45,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                      onPressed: () { Navigator.pushNamed(context, '/login');},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 122, 33, 185)),
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.fromLTRB(120, 10, 120, 10)),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white ,fontSize: 22),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () { Navigator.pushNamed(context, '/signup');},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(149, 211, 164, 245)),
                
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.fromLTRB(115, 10, 115, 10)),
                      
                      ),
                      child: const Text(
                        'Signup',
                        style: TextStyle(color: Colors.black ,fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 111,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 75,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
