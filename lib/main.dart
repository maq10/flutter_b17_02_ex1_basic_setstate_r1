// 9/12/2022 - MQ - ex1_basic_setstate
// Example 1 - State Management - Technique 1 - basic - setState
// Widget-specific state management.
// Pushing changes to the UI through a function call
// Source: b17 - Managing State in Flutter Pragmatically - ISBN - 1801070776
// Chapter 2 - The Core Building Blocks of State Management
// Repo
// https://github.com/PacktPublishing/Managing-State-in-Flutter-Pragmatically/tree/main/ch2
// --------------------
// List of state management approaches
// https://docs.flutter.dev/development/data-and-backend/state-mgmt/options
// --------------------

// ---------- import packages ----------
import 'package:flutter/material.dart';
// ---------- import packages ----------

// ---------- Function - main ----------
void main() {
  runApp(const MyApp());
}
// ---------- Function - main ----------

// ********** Start - Class - MyApp **********
class MyApp extends StatelessWidget {

  // ---------- constructor - method ----------
  const MyApp({Key? key}) : super(key: key);
  // ---------- constructor - method ----------

  // ---------- Method - build ----------
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ---------- material - MaterialApp ----------
    return MaterialApp(
      // ----- MaterialApp - property - title -----
      title: 'Flutter Demo',
      // ----- MaterialApp - property - title -----
      // ----- MaterialApp - property - theme -----
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // ----- MaterialApp - property - theme -----
      // ----- MaterialApp - property - home -----
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // ----- MaterialApp - property - home -----
    );
    // ---------- material - MaterialApp ----------
  }
  // ---------- Method - build ----------

}
// ********** End - Class - MyApp **********

// ********** Start - Class - MyHomePage **********
class MyHomePage extends StatefulWidget {

  // ---------- constructor - method ----------
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  // ---------- constructor - method ----------

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // ---------- class - fields ----------
  final String title;
  // ---------- class - fields ----------

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// ********** End - Class - MyHomePage **********

// ********** Start - Class - _MyHomePageState **********
class _MyHomePageState extends State<MyHomePage> {
  // ---------- class - fields ----------
  // mq - initialize an integer variable called _counter with the value zero
  int _counter = 0;
  // ---------- class - fields ----------

  // ---------- Method - _incrementCounter ----------
  void _incrementCounter() {
    // mq - this setState function takes a void callback function as its parameter
    // As soon as this setState method is called,
    // it rebuilds the current widget and the widgets that are inside it
    // with all the updated values we put inside it
    // ---------- Method - setState ----------
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    // ---------- Method - setState ----------
  }
  // ---------- Method - _incrementCounter ----------

  // ---------- Method - build ----------
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // ---------- material - Scaffold ----------
    return Scaffold(
      // ~~~~~ Scaffold - property - appBar ~~~~~
      appBar: AppBar(
        // ----- AppBar - property - title -----
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        // ----- AppBar - property - title -----
      ),
      // ~~~~~ Scaffold - property - appBar ~~~~~
      // ~~~~~ Scaffold - property - body ~~~~~
      // ----- widget - Center -----
      body: Center(
        // ----- Center - property - child -----
        // ----- widget - Column -----
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // ----- Column - property - mainAxisAlignment -----
          // MainAxisAlignment.center - Place the children as close to the middle of the main axis as possible.
          mainAxisAlignment: MainAxisAlignment.center,
          // ----- Column - property - mainAxisAlignment -----
          // ----- Column - property - children -----
          children: <Widget>[
            // ----- widget - Text -----
            const Text(
              'You have pushed the button this many times:',
            ),
            // ----- widget - Text -----
            // ----- widget - Text -----
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            // ----- widget - Text -----
          ],
          // ----- Column - property - children -----
        ),
        // ----- widget - Column -----
        // ----- Center - property - child -----
      ),
      // ----- widget - Center -----
      // ~~~~~ Scaffold - property - body ~~~~~
      // ~~~~~ Scaffold - property - floatingActionButton ~~~~~
      // A button displayed floating above body, in the bottom right corner.
      // ----- material - FloatingActionButton -----
      // A Material Design floating action button.
      floatingActionButton: FloatingActionButton(
        // ----- FloatingActionButton - property - onPressed -----
        // The callback that is called when the button is tapped or otherwise activated.
        onPressed: _incrementCounter,
        // ----- FloatingActionButton - property - onPressed -----
        // ----- FloatingActionButton - property - tooltip -----
        // Text that describes the action that will occur when the button is pressed.
        tooltip: 'Increment',
        // ----- FloatingActionButton - property - tooltip -----
        // ----- FloatingActionButton - property - child -----
        child: const Icon(Icons.add),
        // ----- FloatingActionButton - property - child -----
      ), // This trailing comma makes auto-formatting nicer for build methods.
      // ----- material - FloatingActionButton -----
      // ~~~~~ Scaffold - property - floatingActionButton ~~~~~
    );
    // ---------- material - Scaffold ----------
  }
  // ---------- Method - build ----------

}
// ********** End - Class - _MyHomePageState **********

// // ---------- Generated by Android Studio ----------
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
// // ---------- Generated by Android Studio ----------