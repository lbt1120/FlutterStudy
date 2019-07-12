// Step 4: Create an infinite scrolling lazily loaded list

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '电影海报实例',
      home:Scaffold(
        appBar: AppBar(
          title: Text('电影海报实例'),
        ),
        body:GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio:0.7
          ),
          children: <Widget>[
            new Image.network('http://img5.mtime.cn/mt/2019/06/28/141445.67206086_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/07/01/091242.87940531_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/05/31/163639.93224012_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/05/21/110927.64276487_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/07/01/091242.87940531_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/04/01/175340.68316923_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/02/18/162722.65527177_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/04/19/101038.59732288_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/07/09/122756.44171449_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/06/28/141445.67206086_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/07/01/091242.87940531_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/05/31/163639.93224012_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/05/21/110927.64276487_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/07/01/091242.87940531_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/04/01/175340.68316923_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/02/18/162722.65527177_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/04/19/101038.59732288_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2019/07/09/122756.44171449_185X277X4_185X277X4.jpg',fit:BoxFit.cover),
          ],
        )
      )
//      home: new RandomWords(),
    );
  }
}

//class RandomWords extends StatefulWidget {
//  @override
//  createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//  final _saved = new Set<WordPair>();
//  final TextStyle _biggerFont = new TextStyle(fontSize: 18.0);
//
//  void _pushSaved() {
//    Navigator.of(context).push(
//      new MaterialPageRoute(
//        builder: (context) {
//          final tiles = _saved.map(
//            (pair) {
//              return new ListTile(
//                title: new Text(
//                  pair.asPascalCase,
//                  style: _biggerFont,
//                ),
//              );
//            },
//          );
//          final divided = ListTile.divideTiles(
//            context: context,
//            tiles: tiles,
//          ).toList();
//          return new Scaffold(
//            appBar: new AppBar(
//              title: new Text('Saved Suggestions'),
//            ),
//            body: new ListView(children: divided),
//          );
//        },
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Startup Name Generator'),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//      padding: const EdgeInsets.all(16.0),
//      itemBuilder: (context, i) {
//        if (i.isOdd) return new Divider();
//
//        final index = i ~/ 2;
//        if (index >= _suggestions.length) {
//          _suggestions.addAll(generateWordPairs().take(10));
//        }
//        return _buildRow(_suggestions[index]);
//      },
//    );
//  }
//
//  Widget _buildRow(WordPair pair) {
//    final alreadySaved = _saved.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//      ),
//      onTap: () {
//        setState(() {
//          if (alreadySaved) {
//            _saved.remove(pair);
//          } else {
//            _saved.add(pair);
//          }
//        });
//      },
//    );
//  }
//}
