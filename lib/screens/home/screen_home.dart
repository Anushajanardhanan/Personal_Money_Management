import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:personal_money_management_app/screens/category/screen_category.dart';
import 'package:personal_money_management_app/screens/home/widgets/bottom_navigation.dart';
import 'package:personal_money_management_app/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier=ValueNotifier(0);

final _pages= const [
  ScreenTransaction(),
  ScreenCategory(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[100],
      appBar: AppBar(title: Text('MONEY MANAGER'),
      centerTitle: true,),
      
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: SafeArea(

        child:ValueListenableBuilder(valueListenable:selectedIndexNotifier ,
        builder: ( BuildContext context,int updatedIndex,_)
        {
          return _pages[updatedIndex];
        })),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(selectedIndexNotifier.value==0){
              print('add transactions');
            }else{
              print('add category');
            }
            print('Add something');
          },
          child:Icon(Icons.add) ,
        ),
    );
    
  }
}