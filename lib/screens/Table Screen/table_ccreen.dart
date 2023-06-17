import 'package:flutter/material.dart';
import 'package:tabe_widget/entity/table_model.dart';
import 'package:tabe_widget/widgets/table_widget.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  List<TableModel> list1 = [
    TableModel(title: 'Name'),
    TableModel(title: 'job title'),
    TableModel(title: 'Position'),
  ];
  List<TableModel> list2 = [
    TableModel(title: 'Sefen'),
    TableModel(title: 'Developer'),
    TableModel(title: 'Med Level'),
  ];
  List<TableModel> list3 = [
    TableModel(title: 'Alber'),
    TableModel(title: 'Tester'),
    TableModel(title: 'Med Level'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Table "), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Table(
            columnWidths: const {
              0: FractionColumnWidth(0.4),
              1: FractionColumnWidth(0.3),
              2: FractionColumnWidth(0.3),
            },
            border: TableBorder.all(),
            children: [
              TableWidget().tableRow(list1),
              TableWidget().tableRow(list2),
              TableWidget().tableRow(list3),
            ],
          ),
        ),
      ),
    );
  }
}
