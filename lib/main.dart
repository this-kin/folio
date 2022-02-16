import 'package:flutter/material.dart';
import 'package:portfolio/modules/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Folio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const GetStarted());
  }
}

class GetStarted extends StatelessWidget {
  const GetStarted({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      child: CircleAvatar(
        backgroundColor: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Book Tracker",
              style: theme.textTheme.headline5,
            ),
            const SizedBox(height: 50),
            const Text(
              r'"Read. Change. Yourself"',
              style: TextStyle(
                color: Colors.black26,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 50),
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: const Color(0xff69639f),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                // go to login
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
              icon: const Icon(Icons.login_rounded),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Sign in to get Started"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
