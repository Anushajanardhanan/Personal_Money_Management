
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class IncomCategoryList extends StatelessWidget {
  const IncomCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder:(context, index) {
        return ListTile(
          title: Text('Incom Category $index') ,
        trailing: IconButton(onPressed: () {   
        },icon:Icon(Icons.delete) ,),);
       
      } ,
    separatorBuilder:(context,index) {
      return const SizedBox(height: 10,);
    },

     itemCount: 100);
  }
}