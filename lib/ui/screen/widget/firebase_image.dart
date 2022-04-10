import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_s1mple/ui/screen/widget/photo_widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_widget/share_widget.dart';

class FirebaseImage extends StatefulWidget {
  final String storagePath;

  FirebaseImage({
    required this.storagePath,
  }) : super(key: Key(storagePath));

  @override
  State<FirebaseImage> createState() => _FirebaseImageState();
}

class _FirebaseImageState extends State<FirebaseImage> {
  File? _file;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    final imageFile = await getImageFile();
    if (mounted) {
      setState(() {
        _file = imageFile;
      });
    }
  }

  Future<File?> getImageFile() async {
    final storagePath = widget.storagePath;
    final tempDir = await getTemporaryDirectory();
    final fileName = widget.storagePath.split('/').last;
    final file = File('${tempDir.path}/$fileName');

    // If the file do not exists try to download
    if (!file.existsSync()) {
      try {
        await file.create(recursive: true);
        await FirebaseStorage.instance.ref(storagePath).writeToFile(file);
      } catch (e) {
        // If there is an error delete the created file
        await file.delete(recursive: true);
        return null;
      }
    }
    return file;
  }

  @override
  Widget build(BuildContext context) {
    final file = _file;
    if (file == null) {
      return Skeleton(radius: 12);
    } else {
      return InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (_) => PhotoWidget(
                image: FileImage(file),
              ),
            ),
          );
        },
        child: Image.file(
          file,
          fit: BoxFit.cover,
        ),
      );
    }
  }
}
