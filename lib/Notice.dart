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
      child: new Material(
        borderRadius: new BorderRadius.circular(6.0),
        elevation: 2.0,
        child: new InkWell(
          onTap: showDetail,
          splashColor: Colors.blue,
          child: _getListTitle(),
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

  Widget _getListTitle() {
    return new Container(
      height: 95.0,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new FadeInImage.assetNetwork(
            placeholder: '',
            image: _img,
            fit: BoxFit.cover,
            width: 95.0,
            height: 95.0,
          ),
          _getColumnText(_title, _date, _description)
        ],
      ),
    );
  }

  Widget _getColumnText(title, date, description) {
    return new Expanded(
      child: new Container(
        margin: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _getTitleWidget(_title),
            _getDateWidget(_date),
            _getDescriptionWidget(_description)
          ],
        ),
      ),
    );
  }

  Widget _getTitleWidget(String title) {
    return new Text(
      title,
      maxLines: 1,
      style: new TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _getDateWidget(date) {
    return new Text(date,
        style: new TextStyle(color: Colors.grey, fontSize: 10.0));
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
