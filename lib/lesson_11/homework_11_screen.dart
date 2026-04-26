void main(){
  runApp(const FlutterWidgetsApp());
}

class FlutterWidgetsApp extends StatelessWidget {
  const FlutterWidgetApp({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Container(
        width: 300;
        height: 150;
      )

    )
  }
}