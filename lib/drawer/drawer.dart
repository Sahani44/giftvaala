import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 100,
              child: Card(
                color: Colors.pink,
                
                elevation: 1.0,
                // child: Row(
                //   children: <Widgets>[],
                // ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.category_outlined),
              title: const Text('All Categories'),
              onTap: (){
                Navigator.pushNamed(context, '/categories');
              },
            ),
            const ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text('Trending'),
            ),
            const ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text('Featured'),
            ),
            const Divider(
              color: Colors.black,
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.cube_box_fill),
              title: Text('My Orders'),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.cart_fill),
              title: Text('My Cart'),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.heart_fill),
              title: Text('My Wishlist'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My Account'),
            ),
            const Divider(
              color: Colors.black,
            ),
            const ListTile(
              title: Text('Help'),
            ),
            ListTile(
              title: const Text('Policies'),
              onTap: (){
                Navigator.pushNamed(context, '/policies');
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: (){
                Navigator.pushNamed(context, '/contact');
              },
            )
          ],
        ),
      );
  }
}