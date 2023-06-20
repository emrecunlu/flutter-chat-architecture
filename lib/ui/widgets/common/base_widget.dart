import 'package:flutter/material.dart';

abstract class BaseWidget<T extends StatefulWidget> extends State<T> {
  ThemeData get theme => Theme.of(context);

  double dynamicHeight(double value) => value * MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) => value * MediaQuery.of(context).size.width * value;
}
