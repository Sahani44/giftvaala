import 'package:flutter/material.dart';
import '../categories/category_list_items.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 76,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CategoryListItem.items.length,
              itemBuilder:(context,index){
                CategoryListItem item = CategoryListItem.items[index];
                String buildTitle = item.buildTitle;
                String backGroundImage = item.backGroundImage;
                String redirectRoute = item.redirectRoute;
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, redirectRoute);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(backGroundImage))
                        ),
                      ),
                      Text(buildTitle,style: const TextStyle(fontSize: 11),),
                    ],
                  ),
                );
                
              }
            ),
          )
        ],//children: ,
      ),
    );
  }
}