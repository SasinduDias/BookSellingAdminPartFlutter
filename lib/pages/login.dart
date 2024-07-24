import 'package:book_app_server_side/pages/home_page.dart';
import 'package:book_app_server_side/pages/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          color: Color.fromARGB(255, 15, 15, 15),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 233, 232, 231),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
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
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  label: Text("User name"),
                  border: OutlineInputBorder(),
                  hintText: 'Enter user name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 118, 135, 235),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 245, 243, 243),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Do you havn't any account",
                style: TextStyle(
                  color: Color.fromARGB(255, 112, 108, 93),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
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
              )
            ],
          ),
        )
      ]),
    ));
  }
}
