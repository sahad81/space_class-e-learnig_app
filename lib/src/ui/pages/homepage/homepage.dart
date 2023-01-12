import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logo_e_learning/src/ui/pages/homepage/widgets/grid_view.dart';
import 'package:logo_e_learning/src/widgets/cart_bn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 131, 151, 161),
         automaticallyImplyLeading: false,
         actions: [
         CartBtn()
         ],
        title: Text("Courses"),centerTitle: true,),
      body: Column(
       
          
          children: [Expanded(child: GridViewCard())]),
    );
  }
}
