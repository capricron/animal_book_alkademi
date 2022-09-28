import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// import myApp in main

class SliderAnimal extends StatefulWidget {
  const SliderAnimal({Key? key}) : super(key: key);

  @override
  State<SliderAnimal> createState() => _SliderAnimalState();
}

class _SliderAnimalState extends State<SliderAnimal> {
int _currentIndex=0;

  List cardList=[
    const Item1(),
    const Item2(),
    const Item3(),
    const Item4(),
    const Item5()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card){
                return Builder(
                  builder:(BuildContext context){
                    return Container(
                      height: MediaQuery.of(context).size.height*0.30,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.blueAccent,
                        child: card,
                      ),
                    );
                  }
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(cardList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/hujan-tropis.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Hujan Tropis', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/padang-rumput.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Padang Rumput', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/sabana.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Sabana', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/taiga.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Taiga', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class Item5 extends StatelessWidget {
  const Item5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/tundra.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Tundra', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}