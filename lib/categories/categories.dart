import 'package:flutter/material.dart';
import 'package:giftvaala/categories/category_list_items.dart';
import '../bottom_navbar/navbar.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // List<CategoryListItem> items = [
    //   CategoryListItem('Men', 'assets/giftvaalaLogo.png', '/contact'),
    //   CategoryListItem('Women', 'assets/giftvaalaLogo.png', '/policies'),
    //   CategoryListItem('Kids', 'assets/giftvaalaLogo.png', '/contact'),
    //   CategoryListItem('Room Decor', 'assets/giftvaalaLogo.png', '/policies'),
    //   CategoryListItem('Wall Decor', 'assets/giftvaalaLogo.png', '/contact'),
    //   CategoryListItem('Lifestyle Accessories', 'assets/giftvaalaLogo.png', '/policies'),
    //   CategoryListItem('Corporate Gifts', 'assets/giftvaalaLogo.png', '/contact'),
    //   CategoryListItem('Combo', 'assets/giftvaalaLogo.png', '/policies'),
    //   CategoryListItem('3D Gifts', 'assets/giftvaalaLogo.png', '/contact'),
    //   CategoryListItem('Bottles', 'assets/giftvaalaLogo.png', '/policies'),
    //   CategoryListItem('Mobile Cover', 'assets/giftvaalaLogo.png', '/contact'),
    //   CategoryListItem('Other', 'assets/giftvaalaLogo.png', '/policies'),
    // ];

    return Scaffold(
      appBar:AppBar(
        title: const Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: CategoryListItem.items.length,
        itemBuilder:(context,index) {
          CategoryListItem item = CategoryListItem.items[index];
          String buildTitle = item.buildTitle;
          String backGroundImage = item.backGroundImage;
          String redirectRoute = item.redirectRoute;
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, redirectRoute);
              },
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    height: 120,width: MediaQuery.of(context).size.width,
                    child: ClipRRect(child: Image.asset(backGroundImage,height: 120,fit:BoxFit.cover),)
                  ),
                  ListTile(
                    title: Text(buildTitle,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    trailing: const Icon(Icons.man),
                  )
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const NavBar()
    );
  }
}