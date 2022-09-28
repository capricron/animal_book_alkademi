// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'slider_animal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black26, textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 150,
                  width: double.infinity,
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Hello Anderson", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text("Have a nice day", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 10,
                  child: 
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 10), 
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/img/profile.jpg'),
                      ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 230,
              child: SliderAnimal(),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text("Recomended Article", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text("Show All", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  // bikin 4 kolom dengan gambar dua baris
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 200,
                          height: 280,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 56, 56, 56),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/hewan/kodok.jpg'),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              // text left column
                              Container(
                                width: 130,
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    const Text("Kodok Acumalaka ini bikin ngakak", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        const Padding(padding: EdgeInsets.only(right: 5), 
                                          child: Icon(Icons.menu, color: Colors.white, size: 20,) 
                                        ),
                                        const Text("Read More", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ) 
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 280,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 56, 56, 56),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/hewan/beluga.jpg'),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              Container(
                                width: 130,
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    const Text("Kucing beluga ini selalu tersenyum", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        const Padding(padding: EdgeInsets.only(right: 5), 
                                          child: Icon(Icons.menu, color: Colors.white, size: 20,) 
                                        ),
                                        const Text("Read More", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ) 
                              ),
                            ],
                          ),
                        ),  
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text("Recomended Article", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text("Show All", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.all(15),
                  child: Wrap(
                    spacing: 10,
                    children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 56, 56, 56),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/hewan/hecker.jpg'),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Wrap(
                                spacing: 20,
                                runSpacing: 10,
                                children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      width: 200,
                                      height: 150,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text("Meskipun kucing ini terlihat lucu tetapi sebenarnya dia sangat berbahaya karena dia adalah hecker", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                                          Row(
                                            children: [
                                              const Padding(padding: EdgeInsets.only(right: 5), 
                                                child: Icon(Icons.menu, color: Colors.white, size: 20,) 
                                              ),
                                              const Text("Read More", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        )
                      ],
                    )
                  ),
                ],
              )
            ),
            BottomNavigationBar(
              backgroundColor: Colors.black26,
              type: BottomNavigationBarType.fixed,
              items: [
                const BottomNavigationBarItem(
                    icon:Icon(Icons.home, color: Color.fromARGB(255, 255, 255, 255)),
                    label: 'Home',
                    backgroundColor: Colors.black26),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.work,color: Color.fromARGB(255, 255, 255, 255)),
                    label: 'Self Help',
                  ),
                const BottomNavigationBarItem(
                    icon:Icon(Icons.face, color: Color.fromARGB(255, 255, 255, 255)),
                    label: 'Profile',
                  ),
              ]
            )
          ],
        ),
        )
      )
    );
  }
}

