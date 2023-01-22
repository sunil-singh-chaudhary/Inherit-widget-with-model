import 'package:flutter/cupertino.dart';
import 'package:iheritwidget_demo/model.dart';

class InheritedCounter extends InheritedWidget {
  InheritedCounter({Key? key, required this.child, required this.hidedata})
      : super(key: key, child: child);

  // final model m;
  final hideData hidedata;
  final Widget child;

  static InheritedCounter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return oldWidget.hidedata != hidedata;
  }
}
