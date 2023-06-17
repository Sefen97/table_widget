import 'package:flutter/material.dart';
import 'package:tabe_widget/entity/table_model.dart';

class TableWidget {
  TableRow tableRow(List<TableModel> tableModelList) => TableRow(
      children: tableModelList
          .map((e) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                    e.title,
                    style: const TextStyle(color: Colors.black87, fontSize: 15),
                  ),
            ),
          ))
          .toList());
}
