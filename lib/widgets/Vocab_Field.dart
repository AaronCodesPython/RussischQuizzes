import 'package:flutter/material.dart';
import '../data/Colors.dart' as UsedColors;
import 'package:russian_quiz_app/data/Quotes.dart';

class VocabField extends StatefulWidget {
  final Image? backgroundImage;
  final String text;
  final String translation;
  bool showingRussian;
  VocabField(this.text, this.translation,
      {super.key, this.backgroundImage, this.showingRussian = true});

  @override
  State<VocabField> createState() => _VocabFieldState();
}

class _VocabFieldState extends State<VocabField> {
  void switchShowing() => setState(() {
        widget.showingRussian = !widget.showingRussian;
      });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 10,
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: GestureDetector(
          onTap: () {
            setState(() {
              switchShowing();
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            margin: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: UsedColors.foregroundBG,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: widget.backgroundImage != null
                  ? DecorationImage(
                      image: widget.backgroundImage!.image,
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                widget.showingRussian ? widget.text : widget.translation,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
