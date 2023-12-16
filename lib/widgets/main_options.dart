import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:russian_quiz_app/data/Quotes.dart';

class MainOption extends StatelessWidget {
  final Image? backgroundImage;
  final String text;
  final String root;

  const MainOption(this.text, this.root, {super.key, this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / (options.length + 3),
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/' + root),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            margin: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: backgroundImage != null
                  ? DecorationImage(
                      image: backgroundImage!.image,
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
