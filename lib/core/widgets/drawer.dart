import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child:  Text('Drawer Header',style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),),
          ),
          ListTile(
            title: const Text('Item 1',style: optionStyle,),
            leading: const Icon(Icons.backup_rounded),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text('Item 2',style: optionStyle,),
            leading: const Icon(Icons.add_a_photo_sharp),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
