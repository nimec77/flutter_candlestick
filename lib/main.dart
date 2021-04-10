import 'package:flutter/material.dart';
import 'package:flutter_candlestick/candlestick_chart/presentation/constants.dart';
import 'package:flutter_candlestick/candlestick_chart/presentation/themes/app_theme.dart';
import 'package:sizer/sizer_util.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, orientation) {
          SizerUtil().init(constraints, orientation);
          return MaterialApp(
            title: kAppTitle,
            theme: kDarkTheme,
            home: const StocksApp(),
          );
        },
      ),
    );
  }
}

class StocksApp extends StatefulWidget {
  const StocksApp({Key? key}) : super(key: key);

  @override
  _StocksAppState createState() => _StocksAppState();
}

class _StocksAppState extends State<StocksApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stocks App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              color: Theme.of(context).backgroundColor,
              height: 25.0.h,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
