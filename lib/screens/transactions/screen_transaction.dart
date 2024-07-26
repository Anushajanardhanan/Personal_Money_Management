
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      
      itemBuilder: (context, index) {
      return const Card(
        elevation: 0,
        child: ListTile(
          leading: CircleAvatar(
            radius:50,
            child: Text('12\n dec',textAlign: TextAlign.center,)),
          title: Text('RS 100000'),
          subtitle: Text('Travel'),
        ),
      );
    },
     separatorBuilder: (context,index){
      return const SizedBox(height: 10);

     },
      itemCount: 10,
      );
  }
  }
