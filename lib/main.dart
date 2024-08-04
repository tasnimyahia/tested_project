// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController lapname = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey();
  String? lap;
  // var f =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Laptop Store'),
            backgroundColor: const Color.fromARGB(255, 39, 203, 209),
            actions: const [
              Icon(Icons.person),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.list),
            ],
            // TapDownDetails:TapDownDetails(globalPosition: Offset(10, 11)),
            bottom: const TabBar(
              indicatorColor: Colors.deepOrangeAccent,
              labelColor: Colors.deepOrangeAccent,
              unselectedLabelColor: Colors.deepPurple,
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.all(10),
                  text: 'LapTop',
                  icon: Icon(Icons.laptop),
                ),
                Tab(
                  iconMargin: EdgeInsets.all(10),
                  text: 'Order',
                  icon: Icon(Icons.bubble_chart),
                ),
                Tab(
                  iconMargin: EdgeInsets.all(10),
                  text: 'Profile',
                  icon: Icon(Icons.face_2),
                ),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    SingleChildScrollView(
                      child: Expanded(
                        flex: 1,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            SizedBox(
                              width: 414,
                              height: 160,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(100)),
                                    child: Image.asset(
                                      'assets/laptop.png',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const SizedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'ProBook 640',
                                          style: TextStyle(
                                              color: Colors.deepPurple),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(" 15.000 € / piece"),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.favorite),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Icon(Icons.shopping_cart_outlined),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 414,
                              height: 160,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(100)),
                                    child: Image.asset(
                                      'assets/lap.png',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const SizedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'ZBook 640',
                                          style: TextStyle(
                                              color: Colors.deepPurple),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(" 19.000 € / piece"),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.favorite),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Icon(Icons.shopping_cart_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 414,
                              height: 160,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    child: Image.asset(
                                      'assets/lapp.png',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const SizedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'ProBook 645',
                                          style: TextStyle(
                                              color: Colors.deepPurple),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(" 17.000 € / piece"),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.favorite),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Icon(Icons.shopping_cart_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: lapname,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 12),
                                ),
                                label: Text(
                                  'Name of laptop',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 18),
                                ),
                                prefixIcon: Icon(Icons.laptop),
                              ),
                              autovalidateMode: AutovalidateMode.always,
                              obscureText: false,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'you cannot leave it';
                                } else {
                                  return 'valid';
                                }
                              },
                              onSaved: (v) {
                                lap = v;
                              },
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              if (formstate.currentState!.validate()) {
                                formstate.currentState!.save();
                                print('is valid');
                              }
                            },
                            color: Colors.purple,
                            focusColor: Colors.pinkAccent,
                            child: const Text(
                              'order',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Image.asset(
                        'assets/lion.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      " Tasneem Y",
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

