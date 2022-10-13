import 'package:flutter/material.dart';
import 'package:package_get_it/models/model.dart';
import 'package:package_get_it/repository/model_controller.dart';

import '../locator.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  Model? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: model != null
            ? Center(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Category ${model!.category}",
                          style: TextStyle(fontSize: 36),
                        ),
                        SizedBox(height: 8),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Image.network(model!.image),
                        ),
                        SizedBox(height: 8),
                        Text("Caption: ${model!.caption}"),
                      ],
                    ),
                  ),
                ),
              )
            : Center(child: Text("No Meme loaded yet")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.skip_next),
        onPressed: () async {
          Model meme = await getIt.get<Receive_Controller>().getNextData();

          setState(() {
            model = meme;
          });
        },
      ),
    );
  }
}
