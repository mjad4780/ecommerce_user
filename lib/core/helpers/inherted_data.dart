import 'package:flutter/material.dart';

// ============================================
// 1. الـ Generic Provider Class

class DataProvider<T> extends InheritedWidget {
  final T data;

  const DataProvider({
    super.key,
    required this.data,
    required super.child,
  });

  static T of<T>(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<DataProvider<T>>();
    assert(provider != null, 'No DataProvider<$T> found in context');
    return provider!.data;
  }

  @override
  bool updateShouldNotify(DataProvider<T> oldWidget) => data != oldWidget.data;
}

/// Widget يغلف الـ child بالـ Provider ويمرر له context صحيح
class DataProviderScope<T> extends StatelessWidget {
  final T data;
  final WidgetBuilder builder;

  const DataProviderScope({
    super.key,
    required this.data,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return DataProvider<T>(
      data: data,
      child: Builder(builder: builder),
    );
  }
}
