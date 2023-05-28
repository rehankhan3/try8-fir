import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';



Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});


  // This widget is the root of your application.

  Future<void> main_fir()  async{
    DatabaseReference ref = FirebaseDatabase.instance.ref("2016-17/Attend");
    //DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");

// Get the data once
    DatabaseEvent event = await ref.once();

// Print the data of the snapshot
    print(event.snapshot.value);

  }

  @override
  Widget build(BuildContext context) {


main_fir();
// Print the data of the snapshot

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});



  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;



  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
      print ("ht is");
      print(height);
      print("width is ");
      print(width);
      //Firebase.initializeApp();
      print('hiii');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
      print ("ht is");
      print(height);
      print("width is ");
      print(width);
      //Firebase.initializeApp();
      print('hiii');

    });
    double sc_width = MediaQuery.of(context).size.width;
    double sc_height = MediaQuery.of(context).size.height;

    double cont_wd;
    if(sc_width>800)
      {
        cont_wd =  500;
      }
    else
      {
        cont_wd= sc_width;
      }

    print ("ht is");
    print(sc_height);
    print("width is ");
    print(sc_width);
    //Firebase.initializeApp();
    print('hiii');
    //print(databaseref.key);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: cont_wd,
          height: sc_width,
          color: Colors.green,
          child: Text("Hello! I am in the container widget", style: TextStyle(fontSize: 25)),
        ),
      )  ,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
