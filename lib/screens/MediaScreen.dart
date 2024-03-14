import 'package:flutter/material.dart';
import 'package:russian_quiz_app/widgets/GeneralPurpose_Card.dart';
import 'package:russian_quiz_app/widgets/MainDrawer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/Colors.dart' as UsedColors;
import '../data/AllData.dart' as AllData;
// Ensure correct import path

class MediaScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  MediaScreen();

  
  @override
  Widget build(BuildContext context) {
    final PasseData = ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    final AllDataIndex = PasseData[1];
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: UsedColors.foregroundBG, title: Text(PasseData[0], style: TextStyle(color: Colors.white),),
      centerTitle: true,leading: IconButton(
          icon: const Icon(Icons.list, color:Colors.white),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(), 
        ),),
      drawer: const MainDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: AllData.AllData[AllDataIndex].map((text) => GestureDetector(
                onTap: () {
                  Uri url = Uri.parse(text[2]);
                  _launchUrl(url);
                },
                child: GP_Card(text[0], text[1], "assets/${text[3]}"))).toList()),
        ),
      ),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}