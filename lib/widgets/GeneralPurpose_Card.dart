import 'package:flutter/material.dart';
import '../data/Colors.dart' as UsedColors;
class GP_Card extends StatelessWidget {
  String heading_text;
  String asset_name;
  String subheading_text;
  GP_Card(this.heading_text, this.subheading_text, this.asset_name);  

  @override
  Widget build(BuildContext context) {
    
    return Card(
      
      color: UsedColors.foregroundBG,
  // Define the shape of the card
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
  // Define how the card's content should be clipped
  clipBehavior: Clip.antiAliasWithSaveLayer,
  // Define the child widget of the card
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Add padding around the row widget
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add an image widget to display an image
            Image.asset(
              asset_name,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            // Add some spacing between the image and the text
            Container(width: 20),
            // Add an expanded widget to take up the remaining horizontal space
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Add some spacing between the top of the card and the title
                  Container(height: 5),
                  // Add a title widget
                  Text(
                    heading_text,
                    style: TextStyle(color:UsedColors.textColor),
                  ),
                  // Add some spacing between the title and the subtitle
                  Container(height: 10),
                  
                  // Add a text widget to display some text
                  Text(
                    'Von $subheading_text',
                    maxLines: 2,
                    style: TextStyle(color:UsedColors.textColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }
   void _openDocument(String _documentPath) async {
    
  }
}