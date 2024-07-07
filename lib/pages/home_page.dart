import 'package:book_app_server_side/pages/add_book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 25),
                const Text(
                  'Your Books',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 208, 243, 8),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(
                            'Book $index',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Author $index',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 243, 102, 8),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {},
                          ),
                          leading: const Icon(
                            Icons.book_rounded,
                            color: Color.fromARGB(255, 208, 243, 8),
                            size: 30,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          tileColor: const Color.fromARGB(255, 137, 140, 141),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        backgroundColor: const Color.fromARGB(255, 208, 243, 8),
                        onPressed: () {
                          Get.to(const AddBookDetail());
                        },
                        child: const Icon(
                          Icons.add,
                          size: 30,
                          color: Color.fromARGB(255, 243, 8, 212),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
