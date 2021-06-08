import 'package:flutter/material.dart';

abstract class ApiService {
  Future fetchData({@required String url});
}
