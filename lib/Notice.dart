import 'package:flutter/material.dart';
import 'package:news_medium/Detail.dart';

class Notice extends StatelessWidget {
  Notice(this._img, this._title, this._date, this._description);

  var _img;
  var _title;
  var _date;
  var _description;

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return Container(
      margin: const EdgeInsets.only(
          left: 10.0, right: 10.0, bottom: 10.0, top: 0.0),
      child: new Card(
        // borderRadius: new BorderRadius.circular(20.0),
        elevation: 2.0,
        child: new InkWell(
          onTap: showDetail,
          splashColor: Colors.blue,
          child: _getListTitle(context),
        ),
      ),
    );
  }

  showDetail() {
    Navigator.of(_context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Detail(_img, _title, _date, _description);
    }));
  }

  Widget _getListTitle(BuildContext context) {
    // Foi adicionado dentro de Container para adicionar altura fixa.
    return new Container(
      height: 390.0,
      // width: MediaQuery.of(context).size.width,
      child: new Column(
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          new Hero(
            tag: 'title',
            child: _getImgWidget(_img),
          ),
          _getColumnText(_title, _date, _description),
        ],
      ),
    );
  }

  Widget _getImgWidget(String url) {
    return new Container(
      // width: 95.0,
      height: 250.0,
      child: new ClipRRect(
        borderRadius: new BorderRadius.only(
            topRight: const Radius.circular(6.0),
            topLeft: const Radius.circular(6.0)),
        child: _getImageNetwork(url),
      ),
    );
  }

  Widget _getImageNetwork(String url) {
    return new FadeInImage.assetNetwork(
      placeholder: '',
      image: url,
      fit: BoxFit.cover,
    );
  }

  Widget _getColumnText(title, date, description) {
    return new Expanded(
      child: new Container(
        margin: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _getTitleWidget(_title),
            _getDateWidget(_date),
            // _getDescriptionWidget(_description)
          ],
        ),
      ),
    );
  }

  Widget _getTitleWidget(String title) {
    return new Container(
      padding: EdgeInsets.all(15.0),
      child: new Text(
        title,
        maxLines: 3,
        textAlign: TextAlign.center,
        style: new TextStyle(fontSize: 18.0, color: Colors.grey),
      ),
    );
  }

  Widget _getFooterWidget(date) {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[_getDateWidget(date)],
    );
  }

  Widget _getDateWidget(date) {
    return new Text("15 Jun 19",
        textAlign: TextAlign.center,
        style: new TextStyle(color: Colors.blue, fontSize: 15.0));
  }

  Widget _getDescriptionWidget(String description) {
    return new Container(
        margin: new EdgeInsets.only(top: 5.0),
        child: new Text(
          description,
          maxLines: 2,
        ));
  }
}
