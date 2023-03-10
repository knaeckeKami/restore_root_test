import 'package:flutter/material.dart';
import 'package:restore_root_test/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      restorationScopeId: 'app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .restorablePush(SecondPage.secondPageRouteBuilderWithPragma);
            },
            child: const Text('Second Page static pragma'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .restorablePush(SecondPage.secondPageRouteBuilderNoPragma);
            },
            child: const Text('Second Page static no pragma'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .restorablePush(secondPageRouteBuilderWithPragma);
            },
            child: const Text('Second Page top level with pragma'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .restorablePush(secondPageRouteBuilderNoPragma);
            },
            child: const Text('Second Page top level no pragma'),
          ),
        ],
      ),
    ));
  }
}
