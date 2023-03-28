import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        //primaryColor: Colors.orange,
        colorSchemeSeed: const Color(0xFFC107),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Monkeys'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Card(
                          child: Column(children: [
                        Row(children: [
                          const Image(
                            width: 160,
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/jamesmontemagno/app-monkeys/master/sebastian.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hola",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Canada"),
                            ],
                          )
                        ]),
                      ])),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Card(
                          child: Column(children: [
                        Row(children: [
                          const Image(
                            width: 160,
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/jamesmontemagno/app-monkeys/master/henry.jpg'),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sebastian",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("South Tropic"),
                            ],
                          )
                        ]),
                      ])),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.orange),
                    side: MaterialStateProperty.all(
                      BorderSide(width: 1, color: Colors.orange),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Get Monkeys'),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.orange),
                    side: MaterialStateProperty.all(
                      BorderSide(width: 1, color: Colors.orange),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Find Closest'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
