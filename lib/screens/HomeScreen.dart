
import 'package:flutter/material.dart';
import 'package:russian_quiz_app/widgets/MainDrawer.dart';
// Ensure correct import path
import '../data/Colors.dart' as UsedColors;

//switch to burger Menu
//Column(children: options.map((o) => MainOption(o[0], o[1])).toList()),
class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> quote;
  HomeScreen(this.quote);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      drawer: const MainDrawer(),
      backgroundColor: UsedColors.mainBG,
      appBar: AppBar(
        backgroundColor: UsedColors.foregroundBG,
        leading: IconButton(
          icon: const Icon(Icons.list, color:Colors.white),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(), 
        ),
        flexibleSpace: const FlexibleSpaceBar(
          centerTitle: true,
          title: Text(
            "Willkommen bei: Russisch Lernen WG21!",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      
      
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 12, color: UsedColors.foregroundBG)),
              ),
              child: Text(
                quote[0],
                style: TextStyle(color: UsedColors.textColor),
              ),
            ),
          ),
          Expanded(
            child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 12, color: UsedColors.foregroundBG)),
                ),
                child: Text(
                  quote[1],
                  style: TextStyle(color: UsedColors.textColor),
                )),
          )
        ]),
      ),
    );
  }
}
