import 'package:book_app_server_side/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            color: Color.fromARGB(255, 15, 15, 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Login()),
                      // );

                      // );
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color.fromARGB(255, 219, 217, 217),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 233, 232, 231),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Create your account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 233, 232, 231),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    label: Text("Name"),
                    border: OutlineInputBorder(),
                    hintText: 'Enter user name',
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                    hintText: 'Enter email',
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 118, 135, 235),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Color.fromARGB(255, 245, 243, 243),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Or login with",
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 108, 93),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Image.asset(
                  'assets/google.png',
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
