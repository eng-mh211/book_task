import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);
  @override
  State<home_page> createState() => _home_page();
}

class _home_page extends State<home_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle 14.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Hi, Ali!",
                style: TextStyle(color: Colors.black, fontSize: 14),
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            )
          ],
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 40, left: 30),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                "Book List",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
              ),),
              SizedBox(height: 39,),
              Expanded(child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      book("assets/images/img.png","Yves Saint Laurent", "Suzy Menkes ", "\$46.99",4),
                      SizedBox(height: 25,),
                      book("assets/images/12.png", "The Book of Signs", "Rudolf Koch ", "\$99.99", 3),
                      SizedBox(height: 25,),
                      book("assets/images/img.png","Yves Saint Laurent", "Suzy Menkes ", "\$46.99",4),
                      SizedBox(height: 25,),
                      book("assets/images/12.png", "The Book of Signs", "Rudolf Koch ", "\$99.99", 3),
                      SizedBox(height: 25,),
                      book("assets/images/img.png","Yves Saint Laurent", "Suzy Menkes ", "\$46.99",4),
                      SizedBox(height: 25,),
                      book("assets/images/12.png", "The Book of Signs", "Rudolf Koch ", "\$99.99", 3),
                      SizedBox(height: 25,),
                      book("assets/images/img.png","Yves Saint Laurent", "Suzy Menkes ", "\$46.99",4),
                      SizedBox(height: 25,),
                      book("assets/images/12.png", "The Book of Signs", "Rudolf Koch ", "\$99.99", 3),
                      SizedBox(height: 25,),
                    ],
                  )
              ))
            ],
          ),
        )));
  }
}
Widget book(String Image,String book_name, String aurther, String price, int rate) {
  return Container(
    child: Row(
      children: [
        Container(
          height: 106,
          width: 72,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Image),fit: BoxFit.fill)
          ),
        ),
        SizedBox(width: 26,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(book_name,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 7,),
            Text(aurther,style: TextStyle(fontWeight: FontWeight.w200),),
            SizedBox(height: 7,),
            Text(price,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            rating(rate),
          ],
        )
      ],
    ),
  );
}
Widget rating (int? rate){
  return Stack(
    children: [
      Row(
        children: [
          Icon(Icons.star,color: Color(0XFFEDEDEF),),
          Icon(Icons.star,color: Color(0XFFEDEDEF),),
          Icon(Icons.star,color: Color(0XFFEDEDEF),),
          Icon(Icons.star,color: Color(0XFFEDEDEF),),
          Icon(Icons.star,color: Color(0XFFEDEDEF),),
        ],

      ),
      Row(
        children: [
          for(int i = 0; i < rate!;i++)
            Icon(Icons.star,color: Color(0xffffcd42),),
        ],
      ),
    ],
  );
}
