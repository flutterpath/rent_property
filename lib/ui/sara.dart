import 'package:flutter/material.dart';
import 'package:property/ui/second_page.dart';

class SaraProject extends StatefulWidget {
  @override
  _SaraProjectState createState() => _SaraProjectState();
}

class _SaraProjectState extends State<SaraProject> {
  String editableText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Communication")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(editableText != null ? editableText : "Want To Change Text?"),
            RaisedButton(
                color: Colors.blue,
                child: Text("Next Page"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondScreen((value) {
                            setState(() {
                              return editableText = value;
                            });
                            return '';
                          })));
                }),
          ],
        ),
      ),
    );
  }
}
