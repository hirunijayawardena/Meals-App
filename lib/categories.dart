import 'package:flutter/material.dart';
class CategoriesScreen extends StatelessWidget{ //the categories should not be handled with state
    const CategoriesScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Pick your category'),
            ),
            body: GridView(
                // can set the number of columns we want to have
                // by default cross axis is top to bottom, but this is left to right and we get 2 colums
                // we can get 2 columns horizontally 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    childAspectRatio: 3/2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                ), 
                children: const[
                    Text('1', style: TextStyle(color: Colors.white),), 
                    Text('2', style: TextStyle(color: Colors.white),),
                    Text('3', style: TextStyle(color: Colors.white),),  
                    Text('4', style: TextStyle(color: Colors.white),),
                    Text('5', style: TextStyle(color: Colors.white),),
                    Text('6', style: TextStyle(color: Colors.white),),
                ],),
        );
    }
}