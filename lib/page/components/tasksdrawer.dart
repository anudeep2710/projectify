import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ColumnModel {
  final String hintText;

  ColumnModel({required this.hintText});
}

class RowModel {
  final List<ColumnModel> columns;

  RowModel({required this.columns});
}

class JSONStructure {
  final List<RowModel> rows;

  JSONStructure({required this.rows});
}

class TasksScreen extends StatelessWidget {
  final JSONStructure jsonStructure;

  TasksScreen({required this.jsonStructure});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: jsonStructure.rows.map((row) {
        return Row(
          children: row.columns.map((column) {
            return Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: column.hintText,
                ),
              ),
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}

Future<JSONStructure> loadJsonData() async {
  String jsonString = await rootBundle.loadString('assets/jsonfile/rows.json');
  List<dynamic> jsonData = jsonDecode(jsonString);

  List<RowModel> rows = jsonData.map((row) {
    List<dynamic> columns = row['columns'];
    List<ColumnModel> columnModels = columns.map((column) {
      return ColumnModel(hintText: column['hintText']);
    }).toList();

    return RowModel(columns: columnModels);
  }).toList();

  return JSONStructure(rows: rows);
}