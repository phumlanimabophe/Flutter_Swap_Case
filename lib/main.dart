import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sWAP cASE',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'sWAP cASE'),
      debugShowCheckedModeBanner: false,
    );
  }
}
Map main_map={};
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: (){
            main_map["username"]="";
            main_map["email"]="";
            main_map["submitted"]=false;
            main_map["reloaded"]=false;
            main_map["state2"]((){});
            main_map["aState"](() { });
          },icon: Icon(Icons.refresh),)
        ],
      ),
    
      body: Stack(
        children: [
          backImage(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               theCard(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){
          if(main_map["username"]!=""&&main_map["email"]!=""
          &&main_map["username"]!=null&&main_map["email"]!=null){
             main_map["submitted"]=true;
           main_map["state2"]((){}); 
          }
              
        },
        tooltip: 'submit',
        child: const Icon(Icons.send,color: Colors.green,),
      ), 
    );
  }
}


theCard() {
  main_map["reloaded"]  = false;
  main_map["submitted"]=false;

  return StatefulBuilder(
    builder: (context,state) {
      main_map["aState"]=state;


      Future.delayed(Duration(seconds: 5), () {
        main_map["reloaded"]=true;
        main_map["aState"]((){

        });
      });

      if(!main_map["reloaded"]){
        return Center(child: Column(
          children: [
            CircularProgressIndicator(),
            Text("Loading...")
          ],
        ),);
      }

      return Container(
        width: 500,
        height: 400,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color.fromARGB(129, 33, 149, 243), Color.fromARGB(131, 0, 150, 135)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    "https://images.pexels.com/photos/1068206/pexels-photo-1068206.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: StatefulBuilder(
                    builder: (context,state2) {
                      main_map["state2"]=state2;
                      if(main_map["submitted"]){
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Username:",
                                      style: TextStyle(
                                        fontSize: 20, // Increase the font size
                                        fontWeight: FontWeight.bold, // Add bold font weight
                                        color: Colors.black, // Set text color
                                      ),
                                    ),
                                    Text(
                                      swapCaseFirstValue(main_map["username"]),
                                      style: TextStyle(
                                        fontSize: 20, // Increase the font size
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Email:",
                                      style: TextStyle(
                                        fontSize: 20, // Increase the font size
                                        fontWeight: FontWeight.bold, // Add bold font weight
                                        color: Colors.black, // Set text color
                                      ),
                                    ),
                                    Text(
                                      swapCase(main_map["email"]),
                                      style: TextStyle(
                                        fontSize: 20, // Increase the font size
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                  
                      }


                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TextField(
                              onChanged: (v){
                                main_map["username"]=v;
                              },
                              decoration: InputDecoration(
                                hintText: 'Enter your username',
                                hintStyle: TextStyle(color: Colors.white70),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TextField(
                              onChanged: (v){
                                main_map["email"]=v;
                              },
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(color: Colors.white70),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  );
}


backImage(){
  return Positioned(
    top: 0,bottom: 0,right: 0,left: 0,
    child:Image.network(
                "https://images.pexels.com/photos/936048/pexels-photo-936048.jpeg",
                fit: BoxFit.cover,
              ) ,
  );
}

  String swapCase(String s) {
  if (0 < s.length && s.length <= 1000) {
    String newString = "";
    for (int i = 0; i < s.length; i++) {
      if (s[i].toUpperCase() == s[i]) {
        newString += s[i].toLowerCase();
      } else {
        newString += s[i];
      }
    }
    return newString;
  } else {
    return "";
  }
}

  String swapCaseFirstValue(String s) {
  if (0 < s.length && s.length <= 1000) {
    String newString = "";
    for (int i = 0; i < s.length; i++) {
      if(i==0){
        newString += s[0].toUpperCase();
      } 
      else {
        newString += s[i];
      }
    }
    return newString;
  } else {
    return "";
  }
}
