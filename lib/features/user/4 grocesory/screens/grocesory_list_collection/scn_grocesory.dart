// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'd_grocesory_body.dart';
import 'd_grocesory_header.dart';

class ScnGrocesory extends StatelessWidget {
  const ScnGrocesory({super.key, this.scrollController});
  final scrollController;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //------------------------------------------------- HEADER SECTION ----------------------------------------------------
            GrocesoryHeader(),

            //-------------------------------------------------- GRID OF LISTS ----------------------------------------------------

            GrocesoryBody(scrollController: scrollController,),
          ],
        ),
      ),
    );
  }
}


