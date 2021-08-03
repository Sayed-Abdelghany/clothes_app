import 'package:clothes_app/Model/Categories.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  static String id ='ProductDetails';
 final Product? product ;
  ProductDetails( {  this.product});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}
class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(widget.product!.name!),
      ),
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.all(10.sp),
            child: Container(
              height: .35.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple,width: 2.sp),
                image: DecorationImage(
                  image: AssetImage(widget.product!.image!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: .02.sh),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.product!.name!,style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold),),
                Icon(Icons.favorite_border,color: Colors.red,size: 40.sp,)
              ],
            ),
          ),
          Row(
            children: [
              Text(widget.product!.name! ,style: TextStyle(fontSize: 30.sp,color: Colors.purple),),
              SizedBox(width: .03.sw,),
              Text('running' ,style: TextStyle(fontSize: 30.sp,color: Colors.purple),),
            ],
          ),
          SizedBox(height: .03.sh,),
          Text('High Quality Clothes foe Men and Made effectively from best Materials from best brands this The best to Choose and keep your style good',
            style: TextStyle(fontSize: 22.sp),),
          SizedBox(height: .03.sh,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                child: IconButton(icon:Icon(Icons.add),
                  onPressed: (){
                  setState(() {

                  });
                  },
                ),),
              SizedBox(width: 0.01.sh,),
              Text(widget.product!.quantity!.toString(),style: TextStyle(fontSize: 20.sp),),
              SizedBox(width: .01.sw,),
              CircleAvatar(
                backgroundColor: Colors.green,
                child: IconButton(icon:Icon(Icons.remove), onPressed: (){}),),
            ],
          ),
          Padding(
            padding:  EdgeInsets.all(15.sp),
            child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.product!.price!,style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold),),
                Container(
                  height: .06.sh,
                  width: .35.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.purple,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.sp),
                    child: InkWell(
                      onTap:(){} ,
                      child: Row(
                        children: [
                          Icon(Icons.add,color: Colors.white,),
                          SizedBox(width: .04.sw,),
                          Text('Add to Cart',style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
