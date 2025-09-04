import 'package:flutter/material.dart';

/*the purpose of this syntax is to import the flutter material design library
widget and tools for building a material design UI (google design system)

import - is a dart keyword to include external libraries

package: flutter/material.dart - refers to the material design package include
w/ flutter, containing widgets.

This is essential for building Flutter Apps w/ a standard UI

 */

void main() {
  runApp(const MyApp());
}

/*
The entry point of the flutter app

void main() - main function, the starting point of any Dart program

runApp() - is a flutter function that initialize the app and attache the root widget (MyApp) to the screen

const MyApp() - creates an instance of the My App class, marked as constant

 */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //indicate this method override the "build method from StatelessWidget
Widget build(BuildContext context) {
    return MaterialApp(

    title: 'Hello Flutter',
    theme: ThemeData(
          primarySwatch: Colors.blue,
),
    home: const MyHomePage(),
    );

}
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('ACT.7')
),
  body: Center(
    child : Column(
      mainAxisAlignment : MainAxisAlignment.center,
      children: [
        Image.network(
          'https://m.media-amazon.com/images/M/MV5BMTM3NjA1NDMyMV5BMl5BanBnXkFtZTcwMDQzNDMzOQ@@._V1_.jpg',
          width: 550,
          height: 550,
        ),
        const SizedBox(height: 20),
        const Text (
          'Title: The Conjuring',
          style: TextStyle(fontSize: 30),
        ),
        const Text(
          'Synopsis: The Conjuring is a 2013 American supernatural horror film, the first in the Conjuring Universe franchise, about paranormal investigators Ed and Lorraine Warren aiding the Perron family who are terrorized by a dark entity in their new Rhode Island farmhouse. Directed by James Wan and starring Vera Farmiga and Patrick Wilson, the film is based on the allegedly real-life accounts of the Warrens and has been followed by several sequels and spin-off films within its shared universe. ',
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
  ),
    );

  }
}



/*
define as a root widget or main container

class MyApp - declare a custom class that extends StatelessWidget

StatelessWidget - flutter base class for widget that don't change state (static UI)

const MyApp({super.key}) - constructor.w/ super.key passing an optional "key"

parameter to the parent StatelessWidget

Keys are used to identify the widgets uniquely.

const - ensure that the constructor creates a immutable instance.

--------------------------------

Widget build(BuildContext context) - provide contextual information about widgets
position in the widget tree

MaterialApp - flutter widget that sets up the apps core structure, include
navigation, theme, home screen.

title: 'Hello Flutter', - sets the app title, visible on the devise task switcher

theme: ThemeData(primarySwatch: Color.blue), - defines the apps visual theme
w/ color blue as the primary color.

home: const MyHomePage(), - sets the home screen to an instance of the homepage widget.



 */