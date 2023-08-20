import 'package:flutter/material.dart';
import 'package:projectify/constraints.dart';
import 'package:projectify/page/components/header.dart';
import 'package:projectify/page/components/tasksdrawer.dart';
import 'package:projectify/responsive.dart';
import 'dart:convert';



class DashboardScreen extends StatelessWidget {
  Future<JSONStructure> loadJsonData(BuildContext context) async {
    String jsonString =
        await DefaultAssetBundle.of(context).loadString('assets/jsonfile/rows.json');
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          primary: true,
          padding: EdgeInsets.all(defaultPadding),
          child: FutureBuilder<JSONStructure>(
            future: loadJsonData(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Header(),
                    SizedBox(height: defaultPadding),
                    TasksScreen(jsonStructure: snapshot.data!),
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context))
                                Center(child: Text('hello')),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                        // On Mobile means if the screen is less than 850 we don't want to show it
                        if (!Responsive.isMobile(context))
                          Expanded(flex: 3, child: Text('hee')),
                      ],
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}