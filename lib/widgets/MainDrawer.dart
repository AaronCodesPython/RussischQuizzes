import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:russian_quiz_app/providers/SelectedIndexProvider.dart';
import '../data/Colors.dart' as UsedColors;
import './text_styles.dart' as UsedTextStyles;

// use focusColor: Colors.red,

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    int sel = context.watch<SelectedIndex>().index;
    return Drawer(
      backgroundColor: UsedColors.mainBG,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent, // Set a transparent color
            ),
            child: ClipRRect(
              // Use ClipRRect for rounded corners
              borderRadius:
                  BorderRadius.circular(20.0), // Set the border radius
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/flag.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Text(""),
              ),
            ),
          ),
          Ink(
            color: sel == 0 ? UsedColors.foregroundBG : UsedColors.mainBG,
            child: ListTile(
              iconColor: UsedColors.textColor,
              leading: const Icon(Icons.home),
              title: Text('Home', style: UsedTextStyles.drawerText),
              selected: sel == 0,
              onTap: () {
                context.read<SelectedIndex>().change(0);
                Navigator.pushReplacementNamed(context, "/");
              },
            ),
          ),
          Ink(
            color: sel == 1 ? UsedColors.foregroundBG : UsedColors.mainBG,
            child: ListTile(
              iconColor: UsedColors.textColor,
              title: Text('Vokabular', style: UsedTextStyles.drawerText),
              leading: const Icon(Icons.book),
              selected: sel == 1,
              onTap: () {
                context.read<SelectedIndex>().change(1);
                Navigator.pushReplacementNamed(context, "/Vocab");
              },
            ),
          ),
          Ink(
            color: sel == 2 ? UsedColors.foregroundBG : UsedColors.mainBG,
            child: ListTile(
              iconColor: UsedColors.textColor,
              title: Text('Quizzes', style: UsedTextStyles.drawerText),
              selected: sel == 2,
              leading: const Icon(Icons.question_mark),
              onTap: () {
                context.read<SelectedIndex>().change(2);
                Navigator.pushReplacementNamed(context, "/Quiz");
              },
            ),
          ),
          Ink(
            color: sel == 3 ? UsedColors.foregroundBG : UsedColors.mainBG,
            child: ListTile(
              iconColor: UsedColors.textColor,
              title: Text('Media', style: UsedTextStyles.drawerText),
              selected: sel == 3,
              leading: const Icon(Icons.tv),
              onTap: () {
                context.read<SelectedIndex>().change(3);
                Navigator.pushReplacementNamed(context, "/Media");
              },
            ),
          ),
          Divider(
            color: UsedColors.smallTextColor,
            height: 4,
          ),
          Ink(
            color: sel == 4 ? UsedColors.foregroundBG : UsedColors.mainBG,
            child: ListTile(
              iconColor: UsedColors.textColor,
              title: Text('Info', style: UsedTextStyles.drawerText),
              selected: sel == 4,
              leading: const Icon(Icons.info),
              onTap: () {
                context.read<SelectedIndex>().change(4);
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
