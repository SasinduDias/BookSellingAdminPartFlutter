import 'package:book_app_server_side/model/book.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference bookCollection;

  TextEditingController bookNameController = TextEditingController();
  TextEditingController bookAuthorController = TextEditingController();
  TextEditingController bookCategoryController = TextEditingController();
  TextEditingController bookDescriptionController = TextEditingController();
  TextEditingController bookPriceController = TextEditingController();
  TextEditingController bookImageURLController = TextEditingController();

  @override
  void onInit() {
    bookCollection = firestore.collection('Book');

    super.onInit();
  }

  addBook() {
    try {
      DocumentReference doc = bookCollection.doc();

      Book book = Book(
        id: doc.id,
        author: bookNameController.text,
        category: 'Category',
        description: bookDescriptionController.text,
        imageURL: bookImageURLController.text,
        name: bookNameController.text,
        price: int.parse(bookPriceController.text),
      );

      final bookJson = book.toJson();
      doc.set(bookJson);
      Get.snackbar('Success', 'Book added successfully',
          colorText: Colors.white, backgroundColor: Colors.green);
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
      print(e);
    }
  }
}
