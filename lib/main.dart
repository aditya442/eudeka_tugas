import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Eudeka',style: TextStyle(fontStyle: FontStyle.italic),),
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.favorite_border,color: Colors.white,size: 30,),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                Center(child: Image.asset('assets/images/img.jpeg', width: 300,)),
                SizedBox(height: 20,),
                Text('Flutter Simple Apps',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w700)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 150,
                    width: 310,
                    //color: Colors.orange,
                    child: Card(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                                'Tahun ini, Indonesia merayakan ke-74 hariKemerdekaan.'
                                    ' Tema 17 Agustus 2019 yakni Menuju Indonesia Unggul.'
                                    ' Tema tersebut dikeluarkan berbarengan dengan logo HUt ke-74 RI.'
                                    '',style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star_half),
                                    Icon(Icons.star_border),
                                    Icon(Icons.star_border),

                                  ],
                                )
                              ],
                            ),
                           Column(
                             children: <Widget>[
                               Text('200 vote')
                             ],
                           )
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.favorite),
                              Text('100')
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.favorite_border),
                              Text('50'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.save),
                              Text('220')
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.delete_outline),
                              Text('10')
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.add_circle_outline),
                              Text('25')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
