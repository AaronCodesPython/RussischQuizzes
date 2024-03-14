import 'package:flutter/material.dart';
import 'package:russian_quiz_app/widgets/Vocab_Field.dart';
import '../data/Colors.dart' as UsedColors;
import '../data/Vocab.dart';
import '../widgets/MainDrawer.dart';
import '../database/manage_db.dart' as DataBaseManager;

class VocabScreen extends StatefulWidget {
  const VocabScreen({super.key});

  @override
  State<VocabScreen> createState() => _VocabScreenState();
}

class _VocabScreenState extends State<VocabScreen> {
  late TextEditingController controller1;
  late TextEditingController controller2;
  @override
  initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  Future<List<String>?> openDialog() => showDialog<List<String>>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("wdwad"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: controller1,
                  autofocus: true,
                  decoration: const InputDecoration(hintText: 'Vokabel'),
                ),
                TextField(
                  controller: controller2,
                  decoration: const InputDecoration(hintText: 'Übersetzung'),
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop([controller1.text, controller2.text]);
                  },
                  child: const Text("BESTÄTIGEN"))
            ],
          );
        },
      );
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DataBaseManager.getAllVocabs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            backgroundColor: UsedColors.mainBG,
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () async {
                      List<String> data = await openDialog() ?? [];
                      DataBaseManager.insertVocab(Vocab(
                          russian: controller1.text,
                          translation: controller2.text));
                      controller1.clear();
                      controller2.clear();
                      setState(() {});
                    },
                    icon: const Icon(Icons.add))
              ],
              title: const Text("Deine Vokabeln"),
              backgroundColor: UsedColors.foregroundBG,
            ),
            drawer: const MainDrawer(),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: snapshot.data!
                        .map((entry) =>
                            VocabField(entry.russian, entry.translation))
                        .toList()),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
