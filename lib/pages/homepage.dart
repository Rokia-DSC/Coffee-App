import 'package:coffee_ui/util/coffeetile.dart';
import 'package:coffee_ui/util/coffeetype.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List cofeetype = [
    //[coffe type, isSelected]
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false],
  ];
  //user tapped
  void coffeTypeSelected(int index) {
    setState(() {
      for(int i=0; i< cofeetype.length;i++){
        cofeetype[i][1] = false;
      }
      cofeetype[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Find the best coffee for you',
              style: TextStyle(fontSize: 36),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  hintText: 'Find your coffee',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),

          //horizental list view of cofee types
          Container(
              height: 50,
              child: ListView.builder(
                itemCount: cofeetype.length,
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                return CoffeeType(
                    coffeeType: cofeetype[index][0],
                    isSelcted: cofeetype[index][1],
                    onTap: () {
                      coffeTypeSelected(index);
                    });
              })),

          //horizental list view of cofee tiles
          SizedBox(
            height: 25,
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(
                CoffeeImagePath: 'lib/imges/new1.jpg',
                CoffeeName: 'Latte',
                CoffeePrice: '4.00',
              ),
              CoffeeTile(
                CoffeeImagePath: 'lib/imges/new2.jpg',
                CoffeeName: 'Black',
                CoffeePrice: '5.00',
              ),
              CoffeeTile(
                CoffeeImagePath: 'lib/imges/new3.jpg',
                CoffeeName: 'Cappiciono',
                CoffeePrice: '3.00',
              ),
              CoffeeTile(
                CoffeeImagePath: 'lib/imges/robbie-down-LI8inyHnm_A-unsplash.jpg',
                CoffeeName: 'Latte',
                CoffeePrice: '7.00',
              ),
            ],
          ))
        ],
      ),
    );
  }
}
