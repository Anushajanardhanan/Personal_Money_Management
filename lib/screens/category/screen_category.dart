import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:personal_money_management_app/screens/category/expense_category_list.dart';
import 'package:personal_money_management_app/screens/category/incom_category_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController=TabController(length:2,vsync:this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TabBar(controller:_tabController,
      labelColor:Colors .black,
      unselectedLabelColor: Colors.grey,
      tabs:const [
        Tab(text: ('INCOME'),),
        Tab(text: ('EXPENSE'),),
      ]),
      Expanded(
        child: TabBarView(
          controller:_tabController,
          children: const[
          IncomCategoryList(),
          ExpenseCategoryList(),
        ],
        ),
      )
    ],);
    
  }
}