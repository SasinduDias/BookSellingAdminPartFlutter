import 'dart:ui';

import 'package:book_app_server_side/controller/home_controller.dart';
import 'package:book_app_server_side/widgets/drop_down_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddBookDetail extends StatelessWidget {
  const AddBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
          appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              title: const Text(
                'Add Book',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
              // backgroundColor: Colors.white,
              ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(7),
              color: Color.fromARGB(255, 19, 216, 206),
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Add book details here",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 159, 24, 248))),
                  const SizedBox(height: 20),
                  TextField(
                    controller: ctrl.bookNameController,
                    decoration: InputDecoration(
                        labelText: 'Book Title',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter book title'),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: ctrl.bookPriceController,
                    decoration: InputDecoration(
                        labelText: 'Book Price',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter book price'),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: ctrl.bookAuthorController,
                    decoration: InputDecoration(
                        labelText: 'Book Author Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter book author name'),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: ctrl.bookDescriptionController,
                    decoration: InputDecoration(
                        labelText: 'Description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter book description'),
                    maxLines: 5,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: ctrl.bookImageURLController,
                    decoration: InputDecoration(
                        labelText: 'Image URL',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter book image URL'),
                  ),
                  const SizedBox(height: 20),
                  Container(
                      width: double.infinity,
                      child: DropDownButton(
                        items: const [
                          'Fantasy',
                          'Child',
                          'Science fiction',
                          'Historical Fiction',
                          'Romance novel',
                          'Mystery',
                          'Thriller',
                          'Politics',
                          'Other'
                        ],
                        selectedValueText: ctrl.category,
                        onSelected: (selectedValue) {
                          ctrl.category = selectedValue ?? 'Fantasy';
                          ctrl.update();
                        },
                      )),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      ctrl.addBook();
                    },
                    child: const Text('Add Book',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 159, 24, 248),
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
    });
  }
}
