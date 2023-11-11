import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:speed_house_app/models/space.dart';

class SpaceProvider extends ChangeNotifier {
  List<Space> spaces = [];

  Future<void> getRecommendedSpaces() async {
    Uri uri = Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces');
    var result = await http.get(uri);

    // print(result.statusCode);
    // print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      // print(data[0]['photos']);
      spaces = data.map((item) => Space.fromJson(item)).toList();
    }
    notifyListeners();
  }
}
