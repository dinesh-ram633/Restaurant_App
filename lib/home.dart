import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resta_table/drawer.dart';
import 'package:resta_table/tablebook.dart';
import 'package:resta_table/widget/sliderwidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Resto",style:TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (() {
            Navigator.push(context,MaterialPageRoute(builder: (context) => MainDrawerScreen(),));
          }), icon:Icon(Icons.menu))
        ],
       ),
      body: 
      SingleChildScrollView(
        child: Column(
          children:[
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      width: size.width*1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black54.withOpacity(.6),
                          ),
                          const Expanded(
                              child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 214, 214),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
          ),
          Text("Top Search",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
          sliderwidget(),
          Text("Hotel's For You",style:TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),      
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridB(),
          )
          
        ]
        
        ),
      ),
      
    );
  }
}
class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Dine Out",
      "rating":"Rating 4.8",
      "images":
          "https://st2.depositphotos.com/3690537/5231/i/600/depositphotos_52318349-stock-photo-dining-out.jpg",
    },
    {
      "title": "After6",
      "rating":"Rating 4.5",
      "images":
          "https://www.dineout.co.in/blog/wp-content/uploads/2020/02/p41756-15257754075af17c2f8ed07.jpg",
    },
    {
      "title": "Lakeview",
      "rating":"Rating 4.2",
      "images":
          "https://img.traveltriangle.com/blog/wp-content/uploads/2017/10/best-restaurants-in-Udaipur-cover.jpg",
    },
    {
      "title": "BBQ",
      "rating":"Rating 4.8",
      "images":
          "https://d23ynomj6u3eig.cloudfront.net/sites/default/files/2019-12/52.%20OLgallery%20857x491_1.jpg",
    },
    {
      "title": "Rajashtani",
      "rating":"Rating 4",
      "images":
          "https://www.wearegurgaon.com/wp-content/uploads/2022/04/Rajasthan-Kingdom-of-Dreams-Gurgaon.jpg",
    },
    {
      "title": "ViewIn",
      "rating":"Rating 4.5",
      "images":
          "https://shahibaghrestaurant.com/wp-content/uploads/2022/07/lakeview-rooftop-restaurant-scaled.jpg",
    },
  
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 305,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Color.fromARGB(255, 218, 214, 214),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.amber,
                              fontSize: 20
                            ),
                          ),
                    ),
                   
                    Row(
                      children: [
                        Text(
                          "${gridMap.elementAt(index)['rating']}",
                          style: Theme.of(context).textTheme.subtitle2!.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                        ),
                          IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.star,
                        color: Colors.red,
                      ),
                    ),
                    ],
                    ),
                    Center(
                      child: TextButton(onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TablePage(),));
                      }), child: Text("Book Now",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  }