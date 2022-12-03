import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../const_Widget.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final nameController = TextEditingController();
  final categoryController = TextEditingController();
  final priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
      backgroundColor: primary,
      centerTitle: true,
      title: Text("Add Product"),      
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Text("Product Name"),
        TextField(
          controller: nameController,
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 20,),
        Text("Product Category"),
        TextField(
          controller: categoryController,
        ),
        SizedBox(height: 20,),
        Text("Product Price"),
        TextField(
          keyboardType: TextInputType.number,
          controller: priceController,
        ),
        SizedBox(height: 50,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              height: 50,
              minWidth: 200,
              color: primary,
              onPressed: (){
                  if(nameController.text.isEmpty){
                    snackBar(context, "Please Enter Product Name");
                  }else if(categoryController.text.isEmpty){
                    snackBar(context, "Please Enter Product Category");
                  }else if(priceController.text.isEmpty){
                    snackBar(context, "Please Enter Product Price");
                  }else{

                    try{
                      FirebaseFirestore.instance.collection('products').add({
                      "name":nameController.text,
                      "category":categoryController.text,
                      "price":priceController.text
                    });
                    snackBar(context, "Product Added");
                    Navigator.pop(context);
                    }catch(error){
                      snackBar(context, error.toString());
                    }

                    

                  }


            }, child: Text("ADD PRODUCT",style: TextStyle(color: Colors.white),) ),
          ],
        )

      ]),
    ),
  );
  }
}