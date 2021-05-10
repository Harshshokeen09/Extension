import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Designation',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Harsh SHokeen')),
            DataCell(Text('18')),
            DataCell(Text('Mobile Development')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Sameer Chauhan')),
            DataCell(Text('23')),
            DataCell(Text('Extension Technologies')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Python is not ')),
            DataCell(Text('100%')),
            DataCell(Text('OOPs oriented')),
          ],
        ),
      ],
    );
  }
}
