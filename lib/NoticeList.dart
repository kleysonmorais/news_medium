import 'package:flutter/material.dart';
import 'package:news_medium/Notice.dart';
import 'package:news_medium/newApi.dart';

class NoticeList extends StatefulWidget {
  final state = new _NoticeListState();
  _NoticeListState createState() => state;
}

class _NoticeListState extends State<NoticeList> {
  List _news = new List();
  var repository = NewsApi();
  var _currentIndex = 0;
  var _categorySelected = 0;
  List _categorys = new List();

  @override
  void initState() {
    loadNotices();
    setCategorys();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(
        child: new Column(
          children: <Widget>[
            _getListCategory(),
            new Expanded(
              child: _getListViewWidget(),
            )
          ],
        ),
      ),
      bottomNavigationBar: _getBottomNavigationBar(),
    );
  }

  Widget _getListViewWidget() {
    return new ListView.builder(
      itemCount: _news.length,
      padding: new EdgeInsets.only(top: 5.0),
      itemBuilder: (context, index) {
        return _news[index];
      },
    );
  }

  loadNotices() async {
    List result = await repository.loadNews();

    setState(() {
      result.forEach((item) {
        var notice = new Notice(
            item['url_img'], item['tittle'], item['date'], item['description']);
        _news.add(notice);
      });
    });
  }

  Widget _getBottomNavigationBar() {
    return new BottomNavigationBar(
      onTap: onTapTapped,
      currentIndex: _currentIndex,
      items: [
        new BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            title: Text('Recentes'),
            backgroundColor: Colors.blue),
        new BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            title: Text('Notícias'),
            backgroundColor: Colors.blue[800]),
        new BottomNavigationBarItem(
            icon: const Icon(Icons.info),
            title: Text('Sobre'),
            backgroundColor: Colors.blue)
      ],
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getListCategory() {
    ListView listCategory = new ListView.builder(
      itemCount: _categorys.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return _buildCategoryItem(index);
      },
    );

    return new Container(
      height: 85,
      child: listCategory,
    );
  }

  Widget _buildCategoryItem(index){

    return new GestureDetector(
      onTap: (){
        onTabCategory(index);
      },
      child: new Center(
        child: new Container(
          margin: new EdgeInsets.only(left: 5.0, right: 5.0),
          child: new Material(
            elevation: 2.0,
            borderRadius: new BorderRadius.circular(25.0),
            child:  new Container(
              padding: new EdgeInsets.only(left: 12.0,top: 7.0,bottom: 7.0,right: 12.0),
              color: _categorySelected == index ? Colors.blue[800]:Colors.blue[500],
              child: new Text(_categorys[index],
                style: new TextStyle(
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );

  }

  void onTabCategory(index) {
    setState(() {
      _categorySelected = index;
    });
  }

  void setCategorys() {
    _categorys.add("Geral");
    _categorys.add("Esporte");
    _categorys.add("Tecnologia");
    _categorys.add("Entretenimento");
    _categorys.add("Saúde");
    _categorys.add("Negócios");
  }
}
