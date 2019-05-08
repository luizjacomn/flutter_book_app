import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_book_app/tiles/book_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _categorias = [
    'Android',
    'Java',
    'JQuery',
    'JSF',
    'Flutter',
    'Laravel',
  ];

  int _selectedIndex = -1;

  @override
  void initState() {
//    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 64, 16, 8),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 0,
                      ),
                      child: Text(
                        'Explorar',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        top: 4,
                      ),
                      child: Text(
                        'Recomendados',
                        style: TextStyle(
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  height: 75,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _categorias.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex == index
                                  ? _selectedIndex = -1
                                  : _selectedIndex = index;
                            });
                          },
                          child: Chip(
                            elevation: 8,
                            padding: const EdgeInsets.all(8),
                            backgroundColor: index == _selectedIndex
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).accentColor,
                            label: Text(
                              _categorias[index],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ListView.builder(
                  itemCount: _categorias.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return BookTile();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
