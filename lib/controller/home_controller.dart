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

  String category = "Fantacy";

  List<Book> books = [];

  @override
  Future<void> onInit() async {
    bookCollection = firestore.collection('Book');
    await fetchBooks();
    super.onInit();
  }

  addBook() {
    try {
      DocumentReference doc = bookCollection.doc();

      Book book = Book(
        id: doc.id,
        author: bookNameController.text,
        category: category,
        description: bookDescriptionController.text,
        imageURL: bookImageURLController.text,
        name: bookNameController.text,
        price: int.parse(bookPriceController.text),
      );

      final bookJson = book.toJson();
      doc.set(bookJson);
      Get.snackbar('Success', 'Book added successfully',
          colorText: Colors.white, backgroundColor: Colors.green);
      setValueDefaulf();
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
      print(e);
    }
  }

  fetchBooks() async {
    try {
      QuerySnapshot bookSnapShot = await bookCollection.get();
      final List<Book> retriveBooks = bookSnapShot.docs
          .map((doc) => Book.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      books.clear();
      books.assignAll(retriveBooks);
    } on Exception catch (e) {
      Get.snackbar('Error', e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
      print(e);
    } finally {
      update();
    }
  }

  setValueDefaulf() {
    bookNameController.clear();
    bookAuthorController.clear();
    bookCategoryController.clear();
    bookDescriptionController.clear();
    bookPriceController.clear();
    bookImageURLController.clear();

    update();
  }

  deleteBooks(String id) async {
    try {
      await bookCollection.doc(id).delete();
      fetchBooks();
    } on Exception catch (e) {
      Get.snackbar('Error', e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }
}
