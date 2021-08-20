import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/providers/weatcher_server.dart';
import 'package:previsao_do_tempo/screens/home/widgets/main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (BuildContext _, AsyncSnapshot snap) {
        switch(snap.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
            default:
              return MainScreen(
                data: snap.data["results"]
              );
        }
      }
    );
  }
}