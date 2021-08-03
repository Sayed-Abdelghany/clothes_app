import 'package:badges/badges.dart';
import 'package:clothes_app/Model/Categories.dart';
import 'package:clothes_app/providers/ThemeProvider.dart';
import 'package:clothes_app/screens/CategoryScreen.dart';
import 'package:clothes_app/screens/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: InkWell(
              onTap: (){},
              child: Icon(Icons.favorite)),label: 'Fav'),
          BottomNavigationBarItem(icon: InkWell(
              onTap: (){},
              child: Icon(Icons.shopping_cart)),label: 'Cart'),

        ],
      ),
      key: scaffoldKey,
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:70 ,top: 10),
                child: TextButton(
                    child: Text('change theme',style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      Provider.of<ThemeProvider>(context,listen: false).changeTheme();
                    }
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(4.sp),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Icon(Icons.list),
                ),
                Badge(
                    badgeContent: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                      child: Text('0',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold),),
                    ),
                    position: BadgePosition(top: -13.sp,end: -4.sp),
                    child: Icon(Icons.shopping_cart,size: 30.sp)),
              ],
            ),
          ),
          Padding(padding:  EdgeInsets.all(10.sp),
            child:Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  color: Colors.grey[300]
              ),
              child:TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            height: .15.sh,
            width: 1.sw,
            child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: circle.length,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return CategoryScreen(categoryName: circle[index]['name']);
                      }));
                    },
                    child: Column(
                      children: [
                        Padding(padding:  EdgeInsets.all(10.sp),
                          child: CircleAvatar(
                            radius: 30.sp,
                            backgroundImage:AssetImage(circle[index]['category']),
                          ),
                        ),
                        Text(circle[index]['name'],style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 16.sp),),
                      ],
                    ),
                  );
                }
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(10.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Arrival",style: TextStyle(
                    fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.red),),
                Text("See All",style: TextStyle(
                    fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.red),),
              ],
            ),
          ),
          Container(
            height: .27.sh,
            width: 1.sw,
            child: ListView.builder(
              itemCount: Products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index) {
                return Padding(
                  padding:  EdgeInsets.all(8.sp),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProductDetails(product: Products[index],);
                      }));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: .18.sh,
                          width: .3.sw,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                              image: AssetImage(Products[index].image!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(Products[index].name!,
                          style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold),),
                        Text(Products[index].price!, style: TextStyle(
                            fontSize: 20, color: Colors.deepPurple),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.sp,vertical: 5.sp),
            child: Container(
              height: .26.sh,
              child: Swiper(
                  autoplay: true,
                  pagination: SwiperPagination(),
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(animate[index]),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
