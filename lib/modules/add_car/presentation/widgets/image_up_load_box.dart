import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';

class ImageUpLoadedBox extends StatelessWidget {
  const ImageUpLoadedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey,
      strokeWidth: 2,
      dashPattern: [8, 4],
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      child: Container(
        width: double.infinity,
        height: 200,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_upload, size: 50, color: Colors.grey),
            SizedBox(height: 8),
            Text("اضغط لإضافة صورة", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),

      // ClipRRect(
      //           borderRadius: BorderRadius.circular(10),
      //           child: Image.file(image!, fit: BoxFit.cover, width: double.infinity),
      //         ),
    );
  }
}
