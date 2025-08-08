import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpLoadedBox extends StatelessWidget {
  final Function(File) onImageSelected;
  final File? imageFile;

  const ImageUpLoadedBox({
    super.key,
    required this.onImageSelected,
    this.imageFile,
  });

  Future<void> pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      onImageSelected(File(picked.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pickImage(context),
      child: DottedBorder(
        color: Colors.grey,
        strokeWidth: 2,
        dashPattern: [8, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        child: Container(
          width: double.infinity,
          height: 200,
          alignment: Alignment.center,
          child: imageFile != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.file(
                    imageFile!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.cloud_upload, size: 50, color: Colors.grey),
                    const SizedBox(height: 8),
                    const Text("اضغط لإضافة صورة", style: TextStyle(color: Colors.grey)),
                  ],
                ),
        ),
      ),
    );
  }
}
