import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'index_page.dart';
import './provide/currentInex.dart';
import './splash_screen.dart';

void main(){

  var providers =  Providers();
  var currentIndexProvide =CurrentIndexProvide();

  providers
  ..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide));
  runApp(
    ProviderNode(
      child: MyApp(),
      providers: providers,
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        theme: ThemeData(
          platform: TargetPlatform.android,
        ),
        debugShowCheckedModeBanner:false,
        home: SplashScreen(),
      ),
    );
  }
}