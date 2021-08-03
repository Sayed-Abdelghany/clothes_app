List animate=[
  "assets/images/a1.jpg",
  "assets/images/a2.jpg",
  "assets/images/a3.jpg",
  "assets/images/a4.jpg",
];
List categories=[
  {'image':"assets/images/b1.jpg",'type':'Casual','price':'800 LE','brand':'Versace'},
  {'image':"assets/images/b2.jpg",'type':'Classic','price':'700 LE','brand':'Namshi'},
  {'image':"assets/images/b3.jpg",'type':'Classic','price':'400 LE','brand':'Adidas'},
  {'image':"assets/images/b4.jpg",'type':'Casual','price':'650 LE','brand':'Zara'},
  {'image':"assets/images/b5.jpg",'type':'Casual','price':'750 LE','brand':'Gucci'},
  {'image':"assets/images/b6.jpg",'type':'Classic','price':'820 LE','brand':'Converse'},
  {'image':"assets/images/b7.jpg",'type':'Casual','price':'640 LE','brand':'Lacoste'},
  {'image':"assets/images/b8.jpg",'type':'Casual','price':'500 LE','brand':'Versace'},
  {'image':"assets/images/b9.jpg",'type':'Casual','price':'580 LE','brand':'Namshi'},
  {'image':"assets/images/b10.jpg",'type':'Classic','price':'900 LE','brand':'Adidas'},
  {'image':"assets/images/b11.jpg",'type':'Casual','price':'350 LE','brand':'Zara'},
  {'image':"assets/images/b12.jpg",'type':'Classic','price':'470 LE','brand':'Gucci'}

];

List circle=[
  {'name':"Shirts",'category':"assets/images/sh.jpg",},
  {'name':"Watches",'category':"assets/images/clo.jpg",},
  {'name':"Bags",'category':"assets/images/ba.jpg",},
  {'name':"Shoes",'category':"assets/images/shoes.jpg",},
  {'name':"Jeans",'category':"assets/images/je.jpg",},
  {'name':"Jackets",'category':"assets/images/ja.jpg",},
  {'name':"Accessories",'category':"assets/images/acces.jpg",}
  ];
List <Product>Products = [
  Product(name:'Versace',image:'assets/images/p1.jpg',quantity: '3',price:'800 LE'),
  Product(name:'Namshi',image:'assets/images/p2.jpg',quantity: '4',price:'700 LE'),
  Product(name:'Adidas',image:'assets/images/p3.jpg',quantity: '8',price:'900 LE'),
  Product (name:'Zara',image:'assets/images/p4.jpg',quantity: '7',price:'400 LE'),
  Product (name:'Gucci',image:'assets/images/p5.jpg',quantity: '2',price:'600 LE'),
  Product (name:'Converse',image:'assets/images/p6.jpg',quantity: '5',price:'850 LE'),
  Product (name:'Lacoste',image:'assets/images/p7.jpg',quantity: '6',price:'370 LE'),
];
class Product{
String ?name;
String ?image;
String ?quantity;
String ?price;
Product({this.name,this.image,this.quantity,this.price});
}