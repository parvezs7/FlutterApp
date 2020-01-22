import 'package:flutter/material.dart';
import 'package:flutter_genius_scan/flutter_genius_scan.dart';
import 'package:open_file/open_file.dart';

Map configuration = new Map();

class DocumentScan extends StatefulWidget {
  DocumentScan() {
    configuration = {
      'source': 'camera',
      'defaultFilter': 'none',
      'pdfPageSize': 'a4',
      'multiPage': true,
    };
  }
  @override
  _DocumentScanState createState() => _DocumentScanState();
}

class _DocumentScanState extends State<DocumentScan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          child: Text('Scan'),
          onPressed: () {
            FlutterGeniusScan.scanWithConfiguration(configuration).then(
                (result) {
              String pdfUrl = result['pdfUrl'];
              OpenFile.open(pdfUrl.replaceAll("file://", '')).then(
                  (result) => debugPrint(result),
                  onError: (error) => displayError(context, error));
            }, onError: (error) => displayError(context, error));
          },
        )
      ],
    );
  }

  displayError(BuildContext context, error) {}

  scanDocument() {}
}
