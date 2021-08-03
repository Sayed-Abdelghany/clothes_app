import 'package:clothes_app/Model/Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryScreen extends StatefulWidget {
  static String id = 'CategoryScreen';
 final String ?categoryName;
  CategoryScreen({@required this.categoryName});
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(widget.categoryName!),
      ),
      body: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio:.8,
          ), itemBuilder: (context,index)
      {
        return Padding(
          padding:  EdgeInsets.all(8.sp),
          child: InkWell(
            onTap:(){
//              Navigator.pushNamed(context, 'ProductDetail');
            } ,
            child: Container(
              height: .6.sh,
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.purple)
              ),
              child: Column(
                children: [
                  Container(height:.18.sh,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.purple),
                      image: DecorationImage
                        (image: AssetImage(categories[index]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: .02.sh,),
                  Text(categories[index]['brand'],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),),
                  Text(categories[index]['type'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                  Text(categories[index]['price'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}