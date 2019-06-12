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

  @override
  void initState() {
    loadNotices();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(
        child: _getListViewWidget(),
      ),
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
}
