import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'conta/minhaConta.dart';
import 'home/AppBody.dart';
import 'home/profile.dart';

Future<void> main() async {
  const keyApplicationId = 'aISveG6bMOvX03YHFyX0YSG19Fai25l7X8KqFZ0U';
  const keyClientKey = 'HjXng6HLfbfSyqu2flbklQ5lUosTcpG5SQHCk851';
  const keyParseServerUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);
  void main() => runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

//MainAppState guarda o estado -- contém o build
class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AppBody(),
        '/profile': (context) => const Profile(),
        '/minhaConta': (context) => const MinhaConta()
      },
    );
  }
}
