import 'package:flutter/material.dart';
import 'package:flutter__m4m/vendor/views/screens/edit_products_tabs/published_tab.dart';
import 'package:flutter__m4m/vendor/views/screens/edit_products_tabs/unpublished_tab.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 164, 0, 0),
          title: Text(
            'Edit Products',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 7,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text('Published',style: TextStyle(color: Colors.white),),
            ),
            Tab(
              child: Text('Unpublished',style: TextStyle(color: Colors.white),),
            ),
          ]),
        ),
        body: TabBarView(children: [
          PublishedTab(),
          UnPublishedTab(),
        ]),
      ),
    );
  }
}
