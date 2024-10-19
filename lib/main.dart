import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? primaryColor = Colors.blueAccent;
  Color? secondColor = Colors.blue.shade900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondColor,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.menu, color: Colors.white),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'Alice Account',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Your Balance',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 150,
                      child: Divider(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Balance',
                style: TextStyle(color: Colors.blue.shade200, fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 220,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.blueAccent)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$869,07',
                  style: TextStyle(
                      color: secondColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_up,
                        size: 40,
                        color: Colors.blue.shade200,
                      ),
                      Column(
                        children: [
                          Text('\$756,90',
                              style: TextStyle(
                                  color: secondColor,
                                  fontWeight: FontWeight.bold)),
                          Text('Incoma',
                              style: TextStyle(
                                  color: Colors.blue.shade200, fontSize: 12))
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_down,
                        size: 40,
                        color: Colors.blue.shade200,
                      ),
                      Column(
                        children: [
                          Text(
                            '\$298,54',
                            style: TextStyle(
                                color: secondColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Expand',
                              style: TextStyle(
                                  color: Colors.blue.shade200, fontSize: 12))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Day',
                  style: TextStyle(
                    color: Colors.blue.shade200,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Week',
                  style: TextStyle(color: secondColor),
                ),
                Text(
                  'Month',
                  style: TextStyle(color: secondColor),
                ),
                Text(
                  'Year',
                  style: TextStyle(color: secondColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300)),
              width: 400,
              height: 70,
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Shopping',
                        style: TextStyle(
                            color: secondColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Credit Card',
                        style: TextStyle(
                            fontSize: 12, color: Colors.blue.shade200),
                      ),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '-\$56,90',
                    style: TextStyle(
                        color: secondColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Restaurant Delivery',
                        style: TextStyle(
                            color: secondColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Debit Card',
                        style: TextStyle(
                            fontSize: 12, color: Colors.blue.shade200),
                      ),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.restaurant,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '-\$17,80',
                    style: TextStyle(
                        color: secondColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Eletricity',
                        style: TextStyle(
                            color: secondColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Debit',
                        style: TextStyle(
                            fontSize: 12, color: Colors.blue.shade200),
                      ),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.electric_bolt_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '-\$49,87',
                    style: TextStyle(
                        color: secondColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Shopping',
                        style: TextStyle(
                            color: secondColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Credit Card',
                        style: TextStyle(
                            fontSize: 12, color: Colors.blue.shade200),
                      ),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '-\$12,45',
                    style: TextStyle(
                        color: secondColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Restaurant',
                        style: TextStyle(
                            color: secondColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Debit Card',
                        style: TextStyle(
                            fontSize: 12, color: Colors.blue.shade200),
                      ),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.restaurant,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '-\$22,30',
                    style: TextStyle(
                        color: secondColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
