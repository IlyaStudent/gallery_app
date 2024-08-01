library main_library;

import 'package:flutter/material.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';

part 'root/gallery_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const GalleryApp());
}
