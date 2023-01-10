import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart' as http;
import 'package:travel_dairy/model/picture_model.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var controller = TextEditingController();
  bool isLoading = false;
  PictureModel? pictureData;

  void callApi() async {
    setState(() {
      isLoading = true;
    });
    String url =
        "https://api.unsplash.com/search/photos?page=1&query=${controller.text.trim()}";

    var response = await http.get(
      Uri.parse(
        url,
      ),
      headers: {
        "Authorization":
            "Client-ID y-lot0fEl6wRvz-0ciWr7n8yT27dHHIp4ta1CP5BnIU",
      },
    ).then(
      (value) {
        log("data ${value.body}");
        pictureData = pictureModelFromJson(value.body);
        setState(() {
          isLoading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "Leave No Stone Unturned",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Search",
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                callApi();
              },
              child: Text(
                "Search",
              ),
            ),
          ),
        ),
        Expanded(
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : pictureData == null
                  ? const Offstage()
                  : ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                        dragDevices: {
                          PointerDeviceKind.mouse,
                          PointerDeviceKind.touch,
                        },
                      ),
                      child: MasonryGridView.count(
                        itemCount: pictureData!.results!.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height:
                                index % 2 == 0 ? height * 0.3 : height * 0.4,
                            child: Card(
                              child: Image.network(
                                pictureData!.results![index]!.urls!.full
                                    .toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
        ),
      ],
    );
  }
}
