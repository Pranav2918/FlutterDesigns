import 'package:flutter/material.dart';

class FruitApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FruitAppState();
}

class _FruitAppState extends State<FruitApp> {
  String _selectedFruit;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Navigator(
      pages: [
        MaterialPage(child: Fruits(
          didSelect: (fruit) {
            setState(() => _selectedFruit = fruit);
          },
        )),
        if (_selectedFruit != null)
          MaterialPage(
              child: FruitDetailsView(fruit: _selectedFruit),
              key: FruitDetailsView.valueKey)
      ],
      onPopPage: (route, result) {
        final page = route.settings as MaterialPage;

        if (page.key == FruitDetailsView.valueKey) {
          _selectedFruit = null;
        }

        return route.didPop(result);
      },
    ));
  }
}

//FruitView Class...(Grid of Fruits)
class Fruits extends StatelessWidget {
  final _fruits = ['Mango', 'Orange', 'Pineapple', 'Kiwi', 'Banana', 'Guava'];

  final ValueChanged didSelect;

  Fruits({Key key, this.didSelect});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fruits'),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 25),
          child: GridView.builder(
            itemCount: _fruits.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              final fruit = _fruits[index];
              return GestureDetector(
                onTap: () => didSelect(fruit),
                child: Card(
                  color: Colors.redAccent,
                  child: Center(
                      child: Text(fruit,
                          style: TextStyle(color: Colors.white, fontSize: 18))),
                ),
              );
            },
          ),
        ));
  }
}

//Fruit Details class

class FruitDetailsView extends StatelessWidget {
  static const valueKey = ValueKey('FruitDetailsView');

  final String fruit;

  FruitDetailsView({Key key, this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: Text('Details')),
        body: Center(
          child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                  child: Text(
                'You Selected, $fruit',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))),
        ));
  }
}
