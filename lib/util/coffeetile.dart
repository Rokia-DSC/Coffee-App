import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String CoffeeImagePath;
  final String CoffeePrice;
  final String CoffeeName;

  CoffeeTile({required this.CoffeeImagePath,required this.CoffeeName,required this.CoffeePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              //Coffee image
              child: Image.asset(CoffeeImagePath),
            ),
            //Cofee name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(CoffeeName, style: TextStyle(fontSize: 20),),
                  SizedBox(height: 4,),
                  Text('With Almond Milk',style: TextStyle(color: Colors.grey[700]),),
                ],
              ),
            ),
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$' + CoffeePrice),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.add)),
                ),
              ],
            )
          ],
        )
      ),
    );
    ;
  }
}
