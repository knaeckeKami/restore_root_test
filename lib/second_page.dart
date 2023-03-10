import 'package:flutter/material.dart';

Route secondPageRouteBuilderNoPragma(BuildContext context, Object? args) {
  return MaterialPageRoute<void>(
    builder: (context) => const SecondPage(),
  );
}

@pragma('vm:entry-point')
Route secondPageRouteBuilderWithPragma(BuildContext context, Object? args) {
  return MaterialPageRoute<void>(
    builder: (context) => const SecondPage(),
  );
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  static Route secondPageRouteBuilderNoPragma(
      BuildContext context, Object? args) {
    return MaterialPageRoute<void>(
      builder: (context) => const SecondPage(),
    );
  }

  @pragma('vm:entry-point')
  static Route secondPageRouteBuilderWithPragma(
      BuildContext context, Object? args) {
    return MaterialPageRoute<void>(
      builder: (context) => const SecondPage(),
    );
  }
}
